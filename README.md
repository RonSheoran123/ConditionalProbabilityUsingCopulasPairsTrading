# Conditional Probability Using Copulas - Pairs Trading

Copulas are statistical tools used to model and analyze the dependency structure between random variables, especially when their relationship is complex or non-linear. They help separate the marginal distributions of individual variables from their joint dependency. This allows for flexible modeling of multivariate distributions.

<H2>Algorithmic Trading with Copulas and Conditional Probability</H2>

Algorithmic trading involves using computer programs and algorithms to automatically execute trades based on predefined rules or patterns. By integrating copulas and conditional probability into these algorithms, traders can develop more sophisticated strategies that adapt to the dynamic relationships between multiple assets. The algorithm can monitor real-time market conditions and trigger trades based on the estimated likelihood of specific co-movements between assets.

<H2>Key Concepts:</H2>
<H3>Copula Function:</H3> A copula function models the dependency between multiple assets. It allows us to capture complex relationships (such as non-linear dependencies and tail behavior) that might exist between different financial instruments.

<H3>Conditional Probability:</H3> Conditional probability in this context is used to estimate the likelihood of one asset moving in a certain direction or magnitude given that another asset has moved in a specific way. This conditional information can trigger trades when certain thresholds or patterns are detected.

<H3>Modeling Asset Dependencies:</H3>
Historical returns of two or more assets are gathered, and individual (marginal) distributions are fitted. </n>
A copula function (Sudent-t, Gumbel or Clayton) models the joint distribution of these assets, allowing us to estimate the probability of one asset moving based on another's movement.

<H3>Real-Time Monitoring and Conditional Probability Calculation:</H3>
The algorithm continuously monitors price movements and recalculates returns and volatility in real-time.
Based on the copula model, it calculates the conditional probability that one asset will move a certain way given a specific movement in another asset.

<H3>Trade Execution Based on Conditional Probability:</H3>
When the conditional probability of asset B moving, given a movement in asset A, exceeds a threshold (e.g., 95%), the algorithm triggers a trade.
The system can execute either long or short positions based on the calculated probabilities and market conditions.

<H3>The strategy also takes into account the transaction costs, which includes a fixed amount per trade and some percentage of every trade amount.</H3>

<H2>Example trade on GOOG and AAPL stocks:</H2>
The model trains on historical data from "2015-01-01" to "2020-01-01" and tests the strategy from "2021-01-01" to "2023-12-31".
According to the Akaike Information Criterion (AIC), the best-fit copula comes out to be the Clayton Copula.
The strategy outputs a return of <B>$1425.873</B> starting from a $100 initial capital, with a volatility of <B>0.2007335</B>. 
The Sharpe Ratio comes out to be <B>6.95</B>.

![image](https://github.com/user-attachments/assets/2e9c611f-08e7-40ad-9672-7ea5d176b979)
