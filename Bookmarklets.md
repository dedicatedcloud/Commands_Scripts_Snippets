#  BookMarklets

<a href="https://app.simplenote.com/p/bdm5QL"  target="_blank">Home</a>

Below is a list of 50 useful bookmarklets along with explanations of what each one does. You can create a bookmark in your browser for any of these by copying the code and setting it as the bookmark's URL.

---

1. **Alert Page Title**

   ```javascript
   javascript:(function(){alert(document.title);})();
   ```

   **Description:** Displays an alert dialog showing the current page's title.

2. **Prompt Page URL**

   ```javascript
   javascript:(function(){prompt('Page URL:',location.href);})();
   ```

   **Description:** Opens a prompt dialog displaying the current page's URL, allowing you to copy it.

3. **Make Page Editable**

   ```javascript
   javascript:(function(){
     document.body.contentEditable='true';
     document.designMode='on';
     void 0;
   })();
   ```

   **Description:** Makes the current webpage editable, allowing you to modify text and elements directly in your browser. Note that changes are temporary and only visible to you.

4. **View Page on Wayback Machine**

   ```javascript
   javascript:(function(){
     window.location='https://web.archive.org/web/*/'+location.href;
   })();
   ```

   **Description:** Redirects you to the Internet Archive's Wayback Machine to view archived versions of the current page.

5. **Validate HTML**

   ```javascript
   javascript:(function(){
     window.open('https://validator.w3.org/nu/?doc=' + encodeURIComponent(location.href));
   })();
   ```

   **Description:** Opens the W3C Markup Validation Service to validate the HTML of the current page.

6. **Whois Lookup**

   ```javascript
   javascript:(function(){
     window.location='https://whois.domaintools.com/'+location.hostname;
   })();
   ```

   **Description:** Redirects to DomainTools to perform a Whois lookup on the current domain.

7. **Google Site Search**

   ```javascript
   javascript:(function(){
     window.location='https://www.google.com/search?q=site:'+document.domain;
   })();
   ```

   **Description:** Performs a Google search limited to the current site, showing all indexed pages.

8. **SSL Labs Analyzer**

   ```javascript
   javascript:(function(){
     window.open('https://www.ssllabs.com/ssltest/analyze.html?d=' + encodeURIComponent(window.location.hostname));
   })();
   ```

   **Description:** Opens SSL Labs' SSL Server Test for the current domain to analyze its SSL configuration.

9. **Show Last Modified Date**

   ```javascript
   javascript:(function(){
     alert('This page was last modified on: ' + document.lastModified);
   })();
   ```

   **Description:** Displays an alert showing the last modified date and time of the current page.

10. **Print Page**

    ```javascript
    javascript:(function(){
      window.print();
    })();
    ```

    **Description:** Opens the print dialog to print the current page.

11. **Scroll to Top**

    ```javascript
    javascript:(function(){
      window.scrollTo(0,0);
    })();
    ```

    **Description:** Instantly scrolls the page to the top.

12. **Scroll to Bottom**

    ```javascript
    javascript:(function(){
      window.scrollTo(0,document.body.scrollHeight);
    })();
    ```

    **Description:** Instantly scrolls the page to the bottom.

13. **Check Site Availability**

    ```javascript
    javascript:(function(){
      window.open('https://downforeveryoneorjustme.com/'+location.hostname);
    })();
    ```

    **Description:** Opens a site to check if the current website is down just for you or for everyone.

14. **Alexa Rank**

    ```javascript
    javascript:(function(){
      window.open('https://www.alexa.com/siteinfo/'+location.hostname);
    })();
    ```

    **Description:** Opens Alexa to view the traffic analytics and global rank of the current website.

15. **VirusTotal Scan**

    ```javascript
    javascript:(function(){
      window.open('https://www.virustotal.com/gui/url/search/' + encodeURIComponent(location.href));
    })();
    ```

    **Description:** Scans the current URL for malware and phishing using VirusTotal.

16. **GTmetrix Performance Test**

    ```javascript
    javascript:(function(){
      window.location='https://gtmetrix.com/analyze.html?bm&url='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Analyzes the performance of the current page using GTmetrix.

17. **Mobile-Friendly Test**

    ```javascript
    javascript:(function(){
      window.location='https://search.google.com/test/mobile-friendly?url='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Tests if the current page is mobile-friendly using Google's Mobile-Friendly Test tool.

18. **Display Screen Resolution**

    ```javascript
    javascript:(function(){
      alert('Screen resolution: ' + screen.width + 'x' + screen.height);
    })();
    ```

    **Description:** Shows an alert with your screen's resolution.

19. **PageSpeed Insights**

    ```javascript
    javascript:(function(){
      window.location='https://developers.google.com/speed/pagespeed/insights/?url='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Analyzes the current page using Google's PageSpeed Insights for performance suggestions.

20. **Siteliner Duplicate Content Check**

    ```javascript
    javascript:(function(){
      window.location='https://www.siteliner.com/'+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Checks for duplicate content on the current site using Siteliner.

21. **Enable Dark Mode**

    ```javascript
    javascript:(function(){
      document.body.style.backgroundColor='black';
      document.body.style.color='white';
    })();
    ```

    **Description:** Applies a simple dark mode by changing the background and text colors.

22. **Enable Light Mode**

    ```javascript
    javascript:(function(){
      document.body.style.backgroundColor='white';
      document.body.style.color='black';
    })();
    ```

    **Description:** Reverts the page to light mode with default background and text colors.

23. **Hide Page Content**

    ```javascript
    javascript:(function(){
      document.body.style.visibility='hidden';
    })();
    ```

    **Description:** Hides all visible content on the page.

24. **Show Page Content**

    ```javascript
    javascript:(function(){
      document.body.style.visibility='visible';
    })();
    ```

    **Description:** Makes the page content visible again if it was hidden.

25. **Google Maps Search**

    ```javascript
    javascript:(function(){
      window.location='https://www.google.com/maps/search/?api=1&query='+encodeURIComponent(document.title);
    })();
    ```

    **Description:** Searches Google Maps using the current page's title as the query.

26. **Translate Page to English**

    ```javascript
    javascript:(function(){
      window.location='https://translate.google.com/translate?sl=auto&tl=en&u='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Translates the current page into English using Google Translate.

27. **Mozilla Developer Network Search**

    ```javascript
    javascript:(function(){
      window.open('https://developer.mozilla.org/en-US/search?q='+encodeURIComponent(document.title));
    })();
    ```

    **Description:** Searches the Mozilla Developer Network for documentation related to the page title.

28. **Copy URL to Clipboard**

    ```javascript
    javascript:(function(){
      navigator.clipboard.writeText(location.href);
      alert('URL copied to clipboard!');
    })();
    ```

    **Description:** Copies the current page's URL to the clipboard and shows a confirmation alert.

29. **SimilarWeb Analytics**

    ```javascript
    javascript:(function(){
      window.location='https://www.similarweb.com/website/'+document.hostname;
    })();
    ```

    **Description:** Opens SimilarWeb to view detailed analytics for the current website.

30. **Google Trends Search**

    ```javascript
    javascript:(function(){
      window.open('https://trends.google.com/trends/explore?q='+encodeURIComponent(document.title));
    })();
    ```

    **Description:** Searches Google Trends for the current page's title to see its popularity over time.

31. **BuiltWith Technology Profiler**

    ```javascript
    javascript:(function(){
      window.location='https://builtwith.com/'+location.hostname;
    })();
    ```

    **Description:** Analyzes the current website to show what technologies it's built with using BuiltWith.

32. **Alert Page Title**

    ```javascript
    javascript:(function(){
      alert('The page title is: ' + document.title);
    })();
    ```

    **Description:** Displays an alert with the current page's title.

33. **Alert Page URL**

    ```javascript
    javascript:(function(){
      alert('The page URL is: ' + location.href);
    })();
    ```

    **Description:** Displays an alert with the current page's full URL.

34. **Check Site Availability (Alternative)**

    ```javascript
    javascript:(function(){
      window.open('https://isitdownorjust.me/'+location.hostname);
    })();
    ```

    **Description:** Uses an alternative service to check if the current website is down.

35. **Screenshot Machine**

    ```javascript
    javascript:(function(){
      window.location='https://www.screenshotmachine.com/capture.php?url='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Takes a screenshot of the current page using ScreenshotMachine.com.

36. **Search Page on Twitter**

    ```javascript
    javascript:(function(){
      window.open('https://twitter.com/search?q='+encodeURIComponent(location.href));
    })();
    ```

    **Description:** Searches Twitter for mentions of the current page's URL.

37. **Buffer Share**

    ```javascript
    javascript:(function(){
      window.open('https://buffer.com/add?text='+encodeURIComponent(document.title)+'&url='+encodeURIComponent(location.href));
    })();
    ```

    **Description:** Adds the current page to your Buffer queue for scheduled social media posting.

38. **Show Meta Description**

    ```javascript
    javascript:(function(){
      var desc = document.querySelector('meta[name="description"]');
      alert('Meta Description: ' + (desc ? desc.content : 'Not available'));
    })();
    ```

    **Description:** Displays an alert with the page's meta description, if available.

39. **Show Meta Keywords**

    ```javascript
    javascript:(function(){
      var keywords = document.querySelector('meta[name="keywords"]');
      alert('Meta Keywords: ' + (keywords ? keywords.content : 'Not available'));
    })();
    ```

    **Description:** Displays an alert with the page's meta keywords, if available.

40. **Display Viewport Size**

    ```javascript
    javascript:(function(){
      alert('Current Viewport Size: ' + window.innerWidth + 'x' + window.innerHeight);
    })();
    ```

    **Description:** Shows an alert with your browser's viewport size.

41. **Share on Facebook**

    ```javascript
    javascript:(function(){
      window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href));
    })();
    ```

    **Description:** Opens Facebook's share dialog to share the current page on your timeline.

42. **YouTube Search**

    ```javascript
    javascript:(function(){
      window.location='https://www.youtube.com/results?search_query='+encodeURIComponent(document.title);
    })();
    ```

    **Description:** Searches YouTube for videos related to the current page's title.

43. **Count Links on Page**

    ```javascript
    javascript:(function(){
      alert('Links on this page: ' + document.links.length);
    })();
    ```

    **Description:** Displays an alert with the total number of hyperlinks on the current page.

44. **Pingdom Website Speed Test**

    ```javascript
    javascript:(function(){
      window.location='https://tools.pingdom.com/#5a3d0c4760000000/'+encodeURIComponent(location.href);
    })();
    ```

    **Description:** Tests the load speed of the current page using Pingdom Tools.

45. **Reddit Search**

    ```javascript
    javascript:(function(){
      window.open('https://www.reddit.com/search/?q='+encodeURIComponent(document.title));
    })();
    ```

    **Description:** Searches Reddit for discussions related to the current page's title.

46. **Quora Search**

    ```javascript
    javascript:(function(){
      window.open('https://www.quora.com/search?q='+encodeURIComponent(document.title));
    })();
    ```

    **Description:** Searches Quora for questions and answers related to the page's title.

47. **LinkedIn Search**

    ```javascript
    javascript:(function(){
      window.open('https://www.linkedin.com/search/results/all/?keywords='+encodeURIComponent(document.title));
    })();
    ```

    **Description:** Searches LinkedIn for posts, people, and companies related to the page's title.

48. **Pingdom Website Test (Alternative)**

    ```javascript
    javascript:(function(){
      window.location='https://www.pingdom.com/?url='+encodeURIComponent(location.href);
    })();
    ```

    **Description:** An alternative way to test the current page's load speed using Pingdom.

49. **AMP Validator**

    ```javascript
    javascript:(function(){
      window.open('https://validator.ampproject.org/#url='+encodeURIComponent(location.href));
    })();
    ```

    **Description:** Checks if the current page is AMP-compliant using the AMP Validator.

50. **Copy Title to Clipboard**

    ```javascript
    javascript:(function(){
      navigator.clipboard.writeText(document.title);
      alert('Title copied to clipboard!');
    })();
    ```

    **Description:** Copies the current page's title to the clipboard and shows a confirmation alert.

---

These bookmarklets provide quick access to various tools and functionalities directly from your browser, enhancing productivity and offering valuable insights. Feel free to add any of them to your bookmarks for easy use.

**Note:** Due to browser security policies, some bookmarklets that interact with the clipboard or require certain permissions may not work as expected in all browsers or may prompt for permission.
