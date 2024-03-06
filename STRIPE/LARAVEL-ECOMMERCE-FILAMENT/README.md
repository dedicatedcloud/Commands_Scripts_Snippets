# Commands and Snippets to create Ecommerce app on Laravel & Filament.

### Models and Migrations
```
php artisan make:model Customer -m
```
```
php artisan make:model Brand -m
```
```
php artisan make:model Category -m
```
```
php artisan make:model Product -m
```
```
php artisan make:model Order -m
```
```
php artisan make:model OrderItem -m
```

```
php artisan make:model Customer -m
php artisan make:model Brand -m
php artisan make:model Category -m
php artisan make:model Product -m
php artisan make:model Order -m
php artisan make:model OrderItem -m
```

### Database Migration Fields
<details>
    
  <summary>Create Customer Table Migration Snippet</summary>
    
```
    public function up(): void
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('phone');
            $table->date('date_of_birth');
            $table->string('address');
            $table->string('zip_code');
            $table->string('city');
            $table->timestamps();
        });
    }
```
</details>

<details>
    
  <summary>Create Brands Migration Snippet</summary>

```
public function up(): void
    {
        Schema::create('brands', function (Blueprint $table) {
            $table->id();
            $table->string(column:'name');
            $table->string(column:'slug')->unique();
            $table->string(column:'url')->nullable();
            $table->boolean(column:'is_visible')->default(value:false);
            $table->longText(column:'description')->nullable();
            $table->string(column: 'primary-hex')->nullable();
            $table->timestamps();
        });
    }
```
</details>
  
<details>
     <summary>Create Categories Table Migration Snippet</summary>

```
    public function up(): void
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string(column:'name');
            $table->string(column:'slug')->unique();
            $table->foreignId(column:'parent_id')
            ->nullable()
            ->constrained(table:'categories')
            ->cascadeOnDelete();
            $table->boolean(column:'is_visible')->default(value:false);
            $table->longText(column:'description')->nullable();
            $table->timestamps();
        });
    }
```
</details>
  
<details>
    
  <summary>Create Products Table Migration Snippet</summary>

```
 public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->foreignId('brand_id')
                ->constrained('brands')
                ->cascadeOnDelete();
            $table->enum('type', ['downloadable', 'deliverable'])
                ->default('deliverable');
            $table->string('name');
            $table->string('slug')->unique();
            $table->string('sku')->unique();
            $table->unsignedBigInteger('quantity');
            $table->boolean('is_visible')->default(false);
            $table->longText('description')->nullable();
            $table->decimal('price');
            $table->boolean('featured')->default(false);

            $table->timestamps();
        });
    }
```
</details>

<details>
     <summary>Create Customer Orders Migration Snippet</summary>
    
```
    public function up(): void
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')
                ->constrained('orders')
                ->cascadeOnDelete();
            $table->foreignId('product_id')
                ->constrained('products')
                ->cascadeOnDelete();
            $table->unsignedBigInteger('quantity');
            $table->decimal('unit_price', 10, 2);
            $table->timestamps();
        });
    }

```
</details>
    <details>
    
  <summary>Create Order Items Migration Snippet</summary>
  
```
    public function up(): void
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')
                ->constrained('orders')
                ->cascadeOnDelete();
            $table->foreignId('product_id')
                ->constrained('products')
                ->cascadeOnDelete();
            $table->unsignedBigInteger('quantity');
            $table->decimal('unit_price', 10, 2);
            $table->timestamps();
        });
    }
```
</details>
    <details>
    
  <summary>Create Category Product Migration Snippet</summary>

```
    public function up(): void
    {
        Schema::create('category_product', function (Blueprint $table) {
            $table->foreignId('category_id')
                ->constrained('categories')
                ->cascadeOnDelete();
            $table->foreignId('product_id')
                ->constrained('products')
                ->cascadeOnDelete();
        });
    }
```

