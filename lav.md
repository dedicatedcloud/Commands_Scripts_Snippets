
```
<x-guest-layout>

    <div class="text-center">

        {{-- <a href="/onboarding/redirect" class="text-indigo-500">Connect with Stripe</a> to get started!
    </div> --}}
        <style>
            .centered-link {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            /* .non-clickable {
                pointer-events: none;
            } */

            .mt-6 {
                margin-top: 3.5rem;
                margin-bottom: 3.5rem;
            }

            .py-4 {
                padding-top: 2rem;
                padding-bottom: 2rem;
            }
        </style>
        <h1
            class="mb-4 text-2xl font-extrabold leading-none tracking-tight text-gray-900 md:text-3xl lg:text-3xl dark:text-white">
            Welcome to onboarding</h1>
        <p class="text-justify ...">

            {{-- <span class="non-clickable"> --}}

            Before you can start making sales on the platform, you need to onboard with our
            payment processor, Stripe.</p><br>
        <p class="text-justify ...">You can use an existing account with Stripe, or you can create a new one for
            free. This will enable you to take payments for yourself.</p></br>



        <h2 class="text-justify mb-2 text-lg font-semibold text-gray-900 dark:text-white">Stripe requirements</h2>
        <p class="text-justify">During the onboarding process, you will be redirected to a page where you will be asked
            to provide the following information. Make sure you have the required information before proceeding.</p><br>

        <ul class="max-w-md space-y-1 text-dark-500 list-inside dark:text-gray-400">
            <li class="flex items-center">
                <svg class="w-3.5 h-3.5 me-2 text-indigo-500 dark:text-indigo-400 flex-shrink-0" aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5Zm3.707 8.207-4 4a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L9 10.586l3.293-3.293a1 1 0 0 1 1.414 1.414Z" />
                </svg>
                Personal Information
            </li>
            <li class="flex items-center">
                <svg class="w-3.5 h-3.5 me-2 text-indigo-500 dark:text-indigo-400 flex-shrink-0" aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5Zm3.707 8.207-4 4a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L9 10.586l3.293-3.293a1 1 0 0 1 1.414 1.414Z" />
                </svg>
                Professional Information
            </li>
            <li class="flex items-center">
                <svg class="w-3.5 h-3.5 me-2 text-indigo-500 dark:text-indigo-400 flex-shrink-0" aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5Zm3.707 8.207-4 4a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L9 10.586l3.293-3.293a1 1 0 0 1 1.414 1.414Z" />
                </svg>
                Business Information
            </li>
            <li class="flex items-center">
                <svg class="w-3.5 h-3.5 me-2 text-indigo-500 dark:text-indigo-400 flex-shrink-0" aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5Zm3.707 8.207-4 4a1 1 0 0 1-1.414 0l-2-2a1 1 0 0 1 1.414-1.414L9 10.586l3.293-3.293a1 1 0 0 1 1.414 1.414Z" />
                </svg>
                Bank Account Information
            </li>
        </ul>
        <br>

        <p class="text-justify">Once you have all the required information, click on the Stripe logo below to start
            onboarding.</p><br>

        <a href="/onboarding/redirect" class="text-black-500 centered-link">
            <img
                src='data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjAiIGhlaWdodD0iNjAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZmlsbD0iIzY3NzJlNSI+PHBhdGggZD0iTTEwMS41NDcgMzAuOTRjMC01Ljg4NS0yLjg1LTEwLjUzLTguMy0xMC41My01LjQ3IDAtOC43ODIgNC42NDQtOC43ODIgMTAuNDgzIDAgNi45MiAzLjkwOCAxMC40MTQgOS41MTcgMTAuNDE0IDIuNzM2IDAgNC44MDUtLjYyIDYuMzY4LTEuNDk0di00LjU5OGMtMS41NjMuNzgyLTMuMzU2IDEuMjY0LTUuNjMyIDEuMjY0LTIuMjMgMC00LjIwNy0uNzgyLTQuNDYtMy40OTRoMTEuMjRjMC0uMy4wNDYtMS40OTQuMDQ2LTIuMDQ2ek05MC4yIDI4Ljc1N2MwLTIuNTk4IDEuNTg2LTMuNjc4IDMuMDM1LTMuNjc4IDEuNDAyIDAgMi44OTcgMS4wOCAyLjg5NyAzLjY3OHptLTE0LjU5Ny04LjM0NWMtMi4yNTMgMC0zLjcgMS4wNTctNC41MDYgMS43OTNsLS4zLTEuNDI1SDY1LjczdjI2LjgwNWw1Ljc0Ny0xLjIxOC4wMjMtNi41MDZjLjgyOC41OTggMi4wNDYgMS40NDggNC4wNyAxLjQ0OCA0LjExNSAwIDcuODYyLTMuMyA3Ljg2Mi0xMC41OTgtLjAyMy02LjY2Ny0zLjgxNi0xMC4zLTcuODQtMTAuM3ptLTEuMzggMTUuODRjLTEuMzU2IDAtMi4xNi0uNDgzLTIuNzEzLTEuMDhsLS4wMjMtOC41M2MuNTk4LS42NjcgMS40MjUtMS4xMjYgMi43MzYtMS4xMjYgMi4wOTIgMCAzLjU0IDIuMzQ1IDMuNTQgNS4zNTYgMCAzLjA4LTEuNDI1IDUuMzgtMy41NCA1LjM4em0tMTYuNC0xNy4xOTZsNS43Ny0xLjI0VjEzLjE1bC01Ljc3IDEuMjE4em0wIDEuNzQ3aDUuNzd2MjAuMTE1aC01Ljc3em0tNi4xODUgMS43bC0uMzY4LTEuN2gtNC45NjZWNDAuOTJoNS43NDdWMjcuMjg2YzEuMzU2LTEuNzcgMy42NTUtMS40NDggNC4zNjgtMS4xOTV2LTUuMjg3Yy0uNzM2LS4yNzYtMy40MjUtLjc4Mi00Ljc4MiAxLjd6bS0xMS40OTQtNi43TDM0LjUzNSAxN2wtLjAyMyAxOC40MTRjMCAzLjQwMiAyLjU1MiA1LjkwOCA1Ljk1NCA1LjkwOCAxLjg4NSAwIDMuMjY0LS4zNDUgNC4wMjMtLjc2di00LjY2N2MtLjczNi4zLTQuMzY4IDEuMzU2LTQuMzY4LTIuMDQ2VjI1LjdoNC4zNjh2LTQuODk3aC00LjM3em0tMTUuNTQgMTAuODI4YzAtLjg5Ny43MzYtMS4yNCAxLjk1NC0xLjI0YTEyLjg1IDEyLjg1IDAgMCAxIDUuNyAxLjQ3VjIxLjQ3Yy0xLjkwOC0uNzYtMy43OTMtMS4wNTctNS43LTEuMDU3LTQuNjY3IDAtNy43NyAyLjQzNy03Ljc3IDYuNTA2IDAgNi4zNDUgOC43MzYgNS4zMzMgOC43MzYgOC4wNyAwIDEuMDU3LS45MiAxLjQwMi0yLjIwNyAxLjQwMi0xLjkwOCAwLTQuMzQ1LS43ODItNi4yNzYtMS44NHY1LjQ3YzIuMTM4LjkyIDQuMyAxLjMgNi4yNzYgMS4zIDQuNzgyIDAgOC4wNy0yLjM2OCA4LjA3LTYuNDgzLS4wMjMtNi44NS04Ljc4Mi01LjYzMi04Ljc4Mi04LjIwN3oiLz48L3N2Zz4=' />
        </a>



</x-guest-layout>

```
