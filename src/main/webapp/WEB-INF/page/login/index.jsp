<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>

<link rel="stylesheet" href="../css/style.css">
<link href="../css/css.css" rel="stylesheet" type="text/css">

</head>
<body style="">
	<div class="jq22-container">

		<svg id="svg-source" height="0" version="1.1"
			xmlns="http://www.w3.org/2000/svg"
			style="position: absolute; margin-left: -100%"
			xmlns:xlink="http://www.w3.org/1999/xlink">
		<g id="close-icon">
			<path
				d="M0.014,1.778L1.79,0.001l30.196,30.221l-1.778,1.777L0.014,1.778z"></path>
			<path
				d="M1.79,31.999l-1.776-1.777L30.208,0.001l1.778,1.777L1.79,31.999z"></path>
		</g>
	</svg>

		<div id="js-show-modal" class="launch-button">
			管理员后台
			<div class="launch-button__glare"></div>
		</div>
		<div id="js-modal-overlay" class="modal-overlay"
			style="opacity: 1; display: block;"></div>
		<div id="js-modal-holder" class="modal-holder" style="display: none;">
			<div id="js-hint1" class="hint hint--1"
				style="opacity: 0; display: none;">
				play with the form<br> to be sure it is just<br>a plain
				HTML
			</div>
			<div id="js-hint2" class="hint hint--2"
				style="opacity: 0; display: block;">
				点 击<br>图 标 关 闭
			</div>
			<div id="js-effect"
				style="display: none; transform: translate(0px, 0px);"
				class="effect">
				<div class="effect__burst">
					<!-- <svg viewBox="0 0 300 300" width="300" height="300" id="js-burst">
            <g id="Group" sketch:type="MSLayerGroup"
							transform="translate(2.000000, 2.000000)">
              <path d="M119.843557,132.665423 L142.438936,241.234321"
							stroke="#FC46AD" stroke-width="0"
							transform="translate(131.141247, 186.949872) rotate(9.000000) translate(-131.141247, -186.949872) "
							stroke-dasharray="23 332.6857452392578"
							stroke-dashoffset="-184.89524841308594" stroke-linecap="round"></path>
              <path d="M120.923275,136.327807 L194.055085,223.544529"
							stroke="#D0D202" stroke-width="0"
							transform="translate(157.489180, 179.936168) rotate(9.000000) translate(-157.489180, -179.936168) "
							stroke-dasharray="44 341.46034240722656"
							stroke-dashoffset="-225.8201141357422" stroke-linecap="round"></path>
              <path d="M110.892215,7.63766131 L143.724586,126.274355"
							stroke="#FFE217" stroke-width="0"
							transform="translate(127.308401, 66.956008) rotate(-165.000000) translate(-127.308401, -66.956008) "
							stroke-dasharray="4 369.28804779052734"
							stroke-dashoffset="-190.09601593017578" stroke-linecap="round"></path>
              <path d="M198.35904,105.458064 L161.773069,223.598866"
							stroke="#B8E986" stroke-width="0"
							transform="translate(180.066054, 164.528465) rotate(-74.000000) translate(-180.066054, -164.528465) "
							stroke-dasharray="13 371.0283508300781"
							stroke-dashoffset="-234.67611694335938" stroke-linecap="round">          </path>
              <path d="M146.454121,53.5458334 L227.175148,153.69563"
							stroke="#D0D202" stroke-width="0"
							transform="translate(186.814634, 103.620732) rotate(-74.000000) translate(-186.814634, -103.620732) "
							stroke-dasharray="40 385.8922119140625"
							stroke-dashoffset="-240.6307373046875" stroke-linecap="round">          </path>
              <path d="M94.4127006,27.0036828 L46.0682754,156.269505"
							stroke="#51CAD7" stroke-width="0"
							transform="translate(70.240488, 91.636594) rotate(-257.000000) translate(-70.240488, -91.636594) "
							stroke-dasharray="57 414.0308074951172"
							stroke-dashoffset="-166.01026916503906" stroke-linecap="round">          </path>
              <path d="M29.3969741,113.63349 L113.205038,207.338224"
							stroke="#FC3F6B" stroke-width="0"
							transform="translate(71.301006, 160.485857) rotate(-257.000000) translate(-71.301006, -160.485857) "
							stroke-dasharray="13 377.1462936401367"
							stroke-dashoffset="-242.7154312133789" stroke-linecap="round">          </path>
              <path d="M125.792,38.3112087 L198.92381,125.527931"
							stroke="#D0D202" stroke-width="0"
							transform="translate(162.357905, 81.919570) rotate(-104.000000) translate(-162.357905, -81.919570) "
							stroke-dasharray="54 341.46034240722656"
							stroke-dashoffset="-128.8201141357422" stroke-linecap="round">          </path>
              <path d="M43.4006609,130.173225 L130.540432,224.973356"
							stroke="#FC46AD" stroke-width="0"
							transform="translate(86.970546, 177.573291) rotate(-278.000000) translate(-86.970546, -177.573291) "
							stroke-dasharray="17 386.2947692871094"
							stroke-dashoffset="-235.76492309570312" stroke-linecap="round">          </path>
              <path d="M157.646537,8.08731537 L121.060566,126.228117"
							stroke="#B8E986" stroke-width="0"
							transform="translate(139.353552, 67.157716) rotate(-187.000000) translate(-139.353552, -67.157716) "
							stroke-dasharray="6 371.0283508300781"
							stroke-dashoffset="-164.67611694335938" stroke-linecap="round">          </path>
              <path d="M139.340711,132.100895 L90.9962855,261.366717"
							stroke="#51CAD7" stroke-width="0"
							transform="translate(115.168498, 196.733806) rotate(-10.000000) translate(-115.168498, -196.733806) "
							stroke-dasharray="33 414.0308532714844"
							stroke-dashoffset="-246.01028442382812" stroke-linecap="round">          </path>
              <path d="M136.22617,122.003677 L220.034234,215.708411"
							stroke="#FC3F6B" stroke-width="0"
							transform="translate(178.130202, 168.856044) rotate(-10.000000) translate(-178.130202, -168.856044) "
							stroke-dasharray="25 377.1462936401367"
							stroke-dashoffset="-194.7154312133789" stroke-linecap="round"></path>
            </g>
          </svg> -->
				</div>
				<div class="effect__circle">
					<svg viewBox="0 0 100 100" width="100" height="100">
            <circle cx="50" cy="50" fill="rgba(255,102,180, 0)"
							id="js-circle" r="11" stroke-width="0"></circle>
          </svg>
				</div>
				<div class="effect__line effect__line--1">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <defs>
              <g id="proto-line" class="js-line">
                <line x1="2" x2="2" y1="0" y2="900" stroke="hotpink"
							stroke-dasharray="900 1800" stroke-dashoffset="-900"
							stroke-width="0"></line>
                <line x1="2" x2="2" y1="0" y2="900" stroke="yellow"
							stroke-dasharray="900 1800" stroke-dashoffset="-900"
							stroke-width="0"></line>
                <line x1="2" x2="2" y1="0" y2="900" stroke="cyan"
							stroke-dasharray="900 1800" stroke-dashoffset="-900"
							stroke-width="0"></line>
              </g>
            </defs>
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--2">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--3">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
				<div class="effect__line effect__line--4">
					<svg viewBox="0 0 4 900" width="4" height="900">
            <use xlink:href="#proto-line" width="4" height="900"></use>
          </svg>
				</div>
			</div>
			<form action="" id="js-modal" class="modal"
				style="display: none; opacity: 1; transform: translateY(0px);">
				<div id="js-close-button" class="modal__close">
					<div id="" title="" class="icon ">
						<svg viewBox="0 0 32 32">
              <use xlink:href="#close-icon"></use>
            </svg>
					</div>
				</div>
				<div class="modal__header">登 录</div>
				<div class="modal__description"></div>
				<div class="modal__section">
					<div class="input-with-label">
						<input id="name" type="text" class="input-with-label__input"
							value="admin"> <label for="name"
							class="input-with-label__label">管理员账户
							<div class="input-with-label__label__corner"></div>
						</label>
					</div>
				</div>
				<div class="modal__section">
					<div class="input-with-label">
						<input id="password" type="password"
							class="input-with-label__input"> <label for="password"
							class="input-with-label__label" value="">密码
							<div class="input-with-label__label__corner"></div>
						</label>
					</div>
				</div>
				<div class="modal__section grid grid--sliced grid--gutter-x2">
					<div class="grid-bit grid-bit--14-20">
						<button type="submit">登 录</button>
					</div>
					<div class="grid-bit grid-bit--6-20">
						<button class="button--grey">取消</button>
					</div>
				</div>
			</form>
			<svg style="display: none">
          <image width="480" height="450"
					xlink:href="data:image/png;base64,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eRIIAhD4HwEETG+AQJ0E4ghYEp01a5YprmaMX/jCF2zcuHHWrVs3N6OVSJ977jkn0PPPP98J2W+afV555ZVuFjp16lQ7+OCDXRoSsIT+29/+1r7+9a/bV7/6VTdjVZohW4iA169f72a5vXv3tgkTJtjw4cNNs/h58+bZn/70J3fwcNttt5lm3mwQgEB9BBBwfbwIDQEn0Xqvgl69erVdddVV9sYbb9jVV19tn/vc56xz586OppaXJdef/vSnbnb84x//2I455hhraWlx3z/99NN2wQUXODGfd955u+PpO8lb3w0ePNhuv/1269WrV3ALhQhYy86aASsPzbB9mTSbf+ihh1xZL774YleuDh06BOdNQAhAwAwB0wsgUCeBOALWEvK5555rJ510kv3gBz+InKX+7W9/s29961s2efJk++EPf7g7zO9+9zu74oor7Oc//7n7rnTbuHGjfe9737OVK1faL3/5S3duNnQLEbCWypXvxIkTP5Ls66+/bmeffbZb8r722mutS5cuoVkTDgIQMARMJ4BA3QTiCHj69OlOUrfeequdcsopkXlqlqyZps6xSnqacWp76qmn7MILL3TL0GeeeeYeM03NnDUD1Xnh9pgBa4n5V7/6lVt6Lt8kZy2Jf+pTn3Iz4e7du9fNkggQKDIBZsBFbn3qHotAHAFLvHfffbfdf//9dvjhh0fmq4upLr/8cvvnP//ppKdzxNq0zKxZs2QoAX/iE59wy9A6P/vkk0/aY4895paAv/SlL7mLs0K3kBmw0qo0s0bAoaQJB4FoAgiYngGBOgnEEfAdd9xhd955ZywB6wKu2bNnu3PEWmrW7T9a7tW5Yy1Bf/KTn3RXTw8cOLCumiDgunARGAKJE0DAiSMlwbwTiCNgPbZSF19VW4LWrT9agtZMuHQJWjx17/D111/vlnn9zFjLzvvvv7+7KjrObUAIOO89lfplnQACznoLUb7MEYgjYL28QRdhnXDCCRUvwvr73//uLsLSLUqlF2Hptp8HHnjAfv/739uNN95o48eP3301clvgIOC20CMuBNpOAAG3nSEpFIxAHAGvW7fOSfWVV15xM+HPf/7z7iEcftPFVHfddVfkbUh6+IXi/Oc//3HL2HvvvTcCLlifo7r5JICA89mu1KodCXgB60lRY8eOjcxpr732skmTJu2WrM7Xvvjii24Gq4do6NYdLR/roRnLli0zzX4rPYhDj37UxVu6MOuoo45y9/yWboMGDXIPydADM/y9xSHVZwYcQokwEGg/Agi4/diSck4JeHHpnttK975KlJq1lj6VSg+veOaZZ+zPf/6zvfnmm+47zYJ1IZUeoFHpUZQ6J6zlZ13IpfClD7yQ2CVdHQjoQiw9wCNUwgg4px2UajUNAQTcNE1FQbNCwL/Ivlp5NLvVLLdchlEvVaj2MgYv37/+9a/uGdG6H7f0ViOlp+cy615hCV7L2KNGjQpC5etx6qmn2ogRI/aI41/GoH/q4SFR9/gq3z/84Q+m2X5UXYMKQSAIFJgAAi5w41P17BPQW5MuuugiO+6449wV0nomc/mmi7T0aEw9iONnP/vZR56Wlf1aUkIIFJMAAi5mu1PrJiGgGeZ3vvMdu/fee92FW5U2XSV9zTXXuHuFtQzNBgEIZJ8AAs5+G1HCAhN4/PHH7ZJLLrEbbrjBtFRc/qQrLUHrSVm33HKLe8fwL37xC9tvv/0KTIyqQ6B5CCDg5mkrSlpAAnrc42WXXeaunNY9xJLrkCFD3POi9eAOvaN37ty5NmfOHPfWotNPPz3WQzkKiJYqQyB1Agg49SagABCoTEAXVul1hHpNoe4Vloj79OnjBKxHVOpiKd2WpKdh6WKp0vcIwxUCEMg2AQSc7fahdBAwXWT19ttv22uvveaWm7ds2eKo6OppyVf3AOsK6dIHe4ANAhDIPgEEnP02ooQQgAAEIJBDAgg4h41KlSAAAQhAIPsEEHD224gSQgACEIBADgkg4Bw2KlWCAAQgAIHsE0DA2W8jSggBCEAAAjkkgIBz2KhUCQIQgAAEsk8AAWe/jSghBCAAAQjkkAACzmGjUiUIQAACEMg+AQSc/TaihBCAAAQgkEMCCDiHjUqVIAABCEAg+wQQcPbbiBJCAAIQgEAOCSDgHDYqVYIABCAAgewTQMDZbyNKCAEIQAACOSSAgHPYqFQJAhCAAASyTwABZ7+NKCEEIAABCOSQAALOYaNSJQhAAAIQyD4BBJz9NqKEEIAABCCQQwIIOIeNSpUgAAEIQCD7BBBw9tuIEkIAAhCAQA4JIOAcNipVggAEIACB7BNAwNlvI0oIAQhAAAI5JICAc9ioVAkCEIAABLJPAAFnv40oIQQgAAEI5JAAAs5ho1IlCEAAAhDIPgEEnP02ooQQgAAEIJBDAgg4h41KlSAAAQhAIPsEEHD224gSQgACEIBADgkg4Bw2KlWCAAQgAIHsE0DA2W8jSggBCEAAAjkkgIBz2KhUCQIQgAAEsk8AAWe/jSghBCAAAQjkkAACzmGjUiUIQAACEMg+AQSc/TaihBCAAAQgkEMCCDiHjUqVIAABCEAg+wQQcPbbiBJCAAIQgEAOCSDgHDYqVYIABCAAgewTQMDZbyNKCAEIQAACOSSAgHPYqFQJAhCAAASyTwABZ7+NKCEEIAABCOSQAALOYaNSJQhAAAIQyD4BBJz9NqKEEIAABCCQQwIIOIeNSpUgAAEIQCD7BBBw9tuIEkIAAhCAQA4JIOAcNipVggAEIACB7BNAwDHaaMeOHbZmzRrr1q2b9enTJzKF1tZW27Bhg3Xq1Mm6d+8eIxezJNKIyjik/LEKXCFSo/NrS9njlDVOnJAyJtn+7VXGkHrUEyaqnPVyaJa61sNFYbNWr3rbpd76FiE8Aq7RyuvXr7ddu3ZZ//79d4fcsmWLvfXWW9avXz8bPnx4ZAraWZYsWWI9evSwYcOGxepLSaQRlXFI+WMVuEKkRufXlrLHKWucOCFlTLL926uMIfWoJ0xUOevl0Oi6Ro0R9dQ5NGyj61WrXFHt0igWtcrWLN8j4CotpSO8hQsXuhBjx46tW8Br1661zp07O1HH2dTB25oGAq6PfJxBLk6ckFIl2f7tVcaQetQTppKA69kPGlnXSmNEPXUODdvIeoWUqbx/NpJFSPmaIQwCrtBKvnOtWrXKOnToYAMGDHDLyQMHDjS/I/Tu3dstQ+/cudNaWlqsS5cuTrYKX2kpTUeIiq/O6uP07dvXOnbs+JGSJJGGEt22bZu9//77tn37dpenyvfuu+/uMYOvtLy1evVqVzatAHgm4qA0tTKg9LTErt+3bt3q6qXwYuOX3j2vXr16uf95XvpdS/hKo9IWN0+lp7jirXpHlSuUjcJt3LjRfVR2bWKgsnft2nV3f6i2IiI+77333h4HZB988IFLU1z00aZTGyqr+ll5m3gWPs+ofuc5hrZ5NT5xyhw66JW3jfqk7wvlq0tRfbNSfPWpclGp/detW+faTG0U1d/EfNOmTW5/9vui+CotrWJFxak2RoT2vyhe9bAJyUd1qzXulOdZ2r+r7Zv+VJwY6SAparwM7RNFDIeAqwhYO+2KFSvcDhklYHVSDYZ+QNTOuvfee5uEGnW0qnPCS5cu3R1HnV5pDx06NFLASaShQXTlypVuB9Qgr/w00OijOvkl9EpH1/PmzXMHFloB8GFUbw1U+r8koh1cA6gXrmSvwVRpa+Dy8ZS3wije5s2bncy0PC9ZV9ri5qkyaTBQG2pwUN6SnVYklKfKH8rGi1F1VdlVbv2ugxKlFTIzUV4Si3iMGzfO/Vy0aJFrF7XDPvvs44Q7f/581z/GjBnzkXR9PiqD6hHV71TWkHqF8qm3zCGDqM9bA7baRv1JdddBh9qpXMDlfKvF79mz5x7chgwZ4g42xVm/i3UlmWrfVL8YNGiQC6N4ynvEiBEVD5ArjREhfKNY1csmJJ9a445PQ4zET39rX9Hve+21V2TdVfbSdtEYVolFSJ8oahgEXKPlSwXkg5YKZeTIkW4QkVAWLFjgZKL/RQ3KEqGkoB1ag7eOzDWYa6eP2pJIQzvS4sWLnXwlRIlSZdCBhQaaOALWIDlq1ChXbg1Sy5cvdwcdPn2d+1bZ9913XyeKUl6KJwnrAEDl0u+jR4+uKeB681R7SHBqGx0UaZDXALFs2TI30EucoWxUOM3uJTYvbi+m/fbbL0jASuOdd95xKxESsNpBaWjT7/qfZyJR6FPe/iH9zs/Wa7V5CJ84ZQ4ZSH3eanu1jfqIZuz+Zy0BV4svlp6TX1mS6LW/SRL6PmrTfqjVHvURP0v28bSfVIqntKLGiFC+5WWpl01IPrXGHfHSvqIxQsLVpn1aLLRv+tWZ8rJGjU9RLEL6RFHDIOA2CFgdU0LxW9RssXRZUoOvBKCZi0QtOWgQqrQEG9XB601Dy57K00tfZdVAr4MFDUpxBFxab5VHg70GN0lDm2YS2nklFQmrdAm6lJfOr+s7SUyCrHYQUm+eUfWWQDXD1GCqg4NQNp6ZX4JWe2npTT/Hjx8fLGDFUVt45vpd/UOsdNCmwVQHR2Kk/lFJwNX6ncoaUq8QPkqr3jKHDKRReZcf3JbuN+UcqsVXOj689jMdOImXF3218knC4i/xatNsWX26mnwrCTiUb3l56mUTkk+tMUNtrINDf0rN93fNnDVu6IC12r5Z2lYIOGQP+F8YBNwGAZef86slYAlAg606tgYGf55FIozayaMEXG8amqFqtqsjWb/UG5Vu1P+0FPXmm29+ZAm6tN5aitXRs2aUgwcPrirgcl6aKSu+ZKjBMnQnD8kzqt5KXwcemm1JnKFsdMCigVkDtA6a1FZxBKw21+xOMzO1o4SuAU4HMBrsVS5JWDzUNyoJuFq/Ux1D6hXCR2nVW+aQ4adS3qXyrCbgavFL09ABkj5aShXnWiL1S/dJCDiUbzmvetmE5FNrzFAa/mBQpzf8JnYaM8QvdN9EwCF7AAIOplRtCbpeAftMNdBq8JWMNchKjlH3Clc7txiaRtQRsgZ5iaDWDFh5aMaoWWzpOeC4Ai6fuWkGrAFeM+Coi9AqDcghApYgNRMvnfn7GbAGFuUZykZLeBqkNIsSM8UXF523rGcGrAMav+yssuigQ+d+/XK2Px3hVwniCjikXiF8xL/eMofsWPXO8uLOgHWwJHloaVkrNJVmciqz2kPh/LKz/teWJehQvm2dAdeTT6Uxw7eHVmZ0IBi6sQQdSqpyOGbANRhqBujP0fkj6EpirDUDLs3KX/iggb3SeZZaF/eEpCHRa4aqI1l/jlYDjc7xaEDyy6E6H+1lq+VQ1dWHkziTELA/j6uDDa0CvP32225GWbosXd4cUQxCBKx4Enz5OWBJWfXWua5QNmIlFr6dVHbN3lWfegSsuvnlef2uVQOVRbMPDfZqT4nCryTEFXBIvUL4+Laop8wa5FUXHbRpph+1+XPvvm38uV/1OR2E1DoHXC1+6TUHOlAUTy2v6kBPB2OVZnPKV+HUN3XOV5vaXAerlS7C8nWrNEbU6n9Jsaknn6gxw59HVptpv9BPHVyqLfV7pZWDqH0zikXbNZXfFBBwjbb1F85oMFFnLL0Nqd4ZsAZufbQTaNNAokFcEixd+vFFiurg9aahI3sJRNLyV0ErXeVdOgNWmSQCnS+SrFUu7Zj6aFBqq4C19KvBUfXUR8u6GvS0w4dcBV3vrFv10cGNv9LWXwWtpV2Jz986FcJGTPwVsuoDYuJvbapXwCqP+pTKo3PkmgUrfQldW+nBWFwBh7R5CB/fD+spsw9bekqifBdT+UrbRv1CPNXG6hu1BFwtvq6+L+emfUbM1Xba15Rf+eZvQ1K/8MJRPmrrSrch+TSixoh6+JaWpV42IfnUGjNK0/B3dWjf1P/VjlG8VOao8SmKRX712faaIeAaDLUDaoDUjqHBIer+TJ9E+T2z5Y+rLN8RtKNLipWOyqPuf6w3DZVNR/+qg9LT8ql2Mu1gqk/pozQVTrcilN5f6m8x8vcBl9dJcbSUXloP5aWd09+6Ven+1dD7gOPkqXqrHqqPjuT9fcAqpwZUv4Ww8efQfDqSuNhJGpot1fOIQD9DlIDVl9QePr5+FzO/HB91H3DUI1BL+1099Qrho/TqKbMOVHSwp9uoKp3XV5qV7nXVYF9ex3rvAy4Pr7ZXH9X/JflKQok7nEaNEaH9LyrPetiE5BMyZpT3BfVF/xChSqeHotqlEou4bPMeDwHnvYWpHwQaSECi0wFLPecSG1g8soJApggg4Ew1B4WBAAQgAIGiEEDARWlp6gkBCEAAApkigIAz1RwUBgIQgAAEikIAARelpaknBCAAAQhkigACzlRzUBgIQAACECgKAQRclJamnhCAAAQgkCkCCDhTzUFhIAABCECgKAQQcFFamnpCAAIQgECmCCDgTDUHhYEABCAAgaIQQMBFaWnqCQEIQAACmSKAgDPVHBQGAhCAAASKQgABF6WlqScEIAABCGSKAALOVHNQGAhAAAIQKAoBBFyUlqaeEIAABCCQKQIIOFPNQWEgAAEIQKAoBBBwUVqaekIAAhCAQKYIIOBMNQeFgQAEIACBohBAwEVpaeoJAQhAAAKZIoCAM9UcFAYCEIAABIpCAAEXpaWpJwQgAAEIZIoAAs5Uc1AYCEAAAhAoCgEEXJSWpp4QgAAEIJApAgg4U81BYSAAAQhAoCgEEHBRWpp6QgACEIBApggg4Ew1B4WBAAQgAIGiEEDARWlp6gkBCEAAApkigIAz1RwUBgIQgAAEikIAARelpaknBCAAAQhkigACzlRzUBgIQAACECgKAQRclJamnhCAAAQgkCkCCDhTzUFhIAABCECgKAQQcFFamnpCAAIQgECmCCDgTDUHhYEABCAAgaIQQMBFaWnqCQEIQAACmSKAgDPVHBQGAhCAAASKQgABF6WlqScEIAABCGSKAALOVHNQGAhAAAIQKAoBBFyUlqaeEIAABCCQKQIIOFPNQWEgAAEIQKAoBBBwUVqaekIAAhCAQKYIIOBMNQeFgQAEIACBohBAwBEtvWrVKtNnw4YNRekH1BMCEIBAuxDo06ePDRkyxAYNGtQu6Tdzogi4pPWWL19us2fPtjlz5jgBb9y4sZnblrJDAAIQSJ2ABDx48GCbMGGCTZw40UaPHp16mbJSAAT8YUvMnTvXnnjiCZsxY4a1tLRY3759rWfPnllpJ8oBAQhAoCkJbNmyxdauXWv6OWXKFDvppJPskEMOacq6JF1oBGxmH3zwgV100UW2ZMkSJ92pU6eajtoQcNLdjfQgAIGiEdi6dautWbPGpk2b5k7rjRw50u68807r3bt30VB8pL4I2Mwef/xxJ+BJkybZWWedZZMnTy58xwAABCAAgSQJzJw50+677z6bNWuWE/Dxxx+fZPJNmRYCNrMLL7zQLT1fd911dvrppzdlQ1JoCEAAAlkn8OCDD9rVV19txx13nN11111ZL267lw8Bm9lhhx1mK1ascBdg6Wo9NghAAAIQSJ6ALm7VhVjDhg2zF154IfkMmixFBGxm48aNc8321ltvNVnzUVwIQAACzUWA8fZ/7YWAEXBz7b2UFgIQaGoCCBgB79GB6RBNvT9TeAhAoIkIMN4iYATcRDssRYUABPJDAAEjYAScn/2ZmkAAAk1EAAEjYATcRDssRYUABPJDAAEjYAScn/2ZmkAAAk1EAAEjYATcRDssRYUABPJDAAEjYAScn/05lZq0tra659p26tTJunfv7sqwY8cO98zbbt26uWeJs0EAAh8lgIARMAJmZGgTAclWL+/o0aOHe6qPNr3tRQ9z6devnw0fPrxN6RMZAnklgIARMALO697doHpJwHrFWufOnZ1wEXCDwJNN0xNAwAg4loArLTGuXr3aOnbsaP3793fpanly/fr1bkak3/V+4S5durh3DCuc0tH327dvd99rGVNLll27dt29lKnBXUuZepWXwul3pe8HfoVV+jt37tydvkTQoUMHl8bGjRvdR99rq5SH/r9t2zbbtWuXS0fLqfpd+apsKq9eG+aXWZVWrfJXGiHK45Wn7esWVe/QNEvr6dOLU8cQfuXLzcyAm94NVKABBBAwAo4l4EoD7Lx585xgx44d69LVucGlS5c6oeojEUg2Q4cOdYLUA8klYL1vWJLTYK/f99prLxdO+SxYsGC3kCU/fSRgXwblp9mXF7H+v/feezvJa5Mc9J5jhZOE9bvily+XSk4SnsIpjMqjMnrhvv/+++7gQEuqErS+r1X+qH3Yx1u3bp1btlU9VW/VQWVSGarVu1qalVjqwEVLwvXWsR5+pcvNCLgBozdZND0BBIyA21XAK1eudJIaMWKEk55EIAl6ySxatMh69erlhKtt+fLlJjGNHj3a/d8P5BKhpCoBSn7a/HcSmF5sLZlt3rzZCVszVf1Pm2awmskqT/2UiJTGfvvt95F0Ro0a5cK9++67riySuISr/HWeU3nuu+++Tpb6vVb5o0YIlVHxVF7VSVJUnZctW2YDBw50Eq5W76g0a5VFeajeYlVPHevhh4Cb3gdUoMEEEDACblcBa9YosWh2KilKOppRSoCamb7zzjvu/xV6tAoAAB2iSURBVJKetk2bNrlZs4QtGXkRaVYscXj5lgpYotZ3fiufhStNvwTt89XP8ePH7yHg0nRU7sWLF7uZun8to2byEqV2GpU3pPxR+/N7773nmPiDEoXRgcH8+fOd6CX4avWOSrNWWcRPAq63jr5NQvgh4AaP3mTX9AQQMAJOTMBaWn3zzTf3WIKWWCQtSVUzUX9eUrNhLyIN3Fr29ZvkKClLGtWWMkOWwSVfzcA165b8JTjJKkrApQLRErRmqZqNDh482BWtXMCaJUuk1cofNUIont65rFm+6uk3zdx1DloHBvUu4dYqi2a+5Vclh9QxLr96y9/0IykVgEAMAggYAScmYMlDszjNDv05YJ+4vtMsSjLW4Cz5aHCXwLTEO2DAgMju21YBawlcctJSr6Qv8aqMOhddPgOuV8D+AKJa+SvNViXzqBmwXxqvV2C1yhKVXoiA4/Krt/wxxi6iQKDpCSBgBBxLwDqX62Wrc62aWeoKaJ031TJnuYCVib/4SEKUgDUr0yxTwtY5YP2UGCVr/a402ypglUfl8ueUNRPXuVzl3VYB+3O51cofNUKoTgsXLvzIOWBJWcvuYlGvwGqVRUzjzIDj8qu3/E0/klIBCMQggIARcCwBS6aavepcqZZRJTRJQB+d4y29ClrSU3htmgUrrGaNupBJMtZtRv4qaS0VK6yWfv2FTpUe6BCyBK3ySWySpD4qn7/lqa0CVjlrlT9qnyyNV3oVtJbnVW/xq1dgtcoirnEEHJdfveWPMXYRBQJNTwABI+BYAlYkndPVbS+l99/6W3f8fcCSb6mANavVDFnnd7UprtLQDM3fJ+wf6ODvE670SMOQe5H9OWifviSn882S8KBBg1wZotJR3bRcXlpWyUhi0XK50gkpf6URorzeqqvykpArlanWaFONpdiWcwypY1x+PIqyVmvxPQTMXdCpTQfHRd9aWv00rcAk6BAFbnyqDgEINJQA4y0z4Ngz4Ib2VDKDAAQgkDMCCBgBI+Cc7dRUBwIQaA4CCBgBI+Dm2FcpJQQgkDMCCBgBI+Cc7dRUBwIQaA4CCBgBI+Dm2FcpJQQgkDMCCBgBI+Cc7dRUBwIQaA4CCBgBI+Dm2FcpJQQgkDMCCBgB79GljzzySPfkqJdeemn3gypy1uepDgQgAIHUCegRuYceeqh7KuCzzz6bennSLgAP4jCzSy+91B577DG78cYb7bTTTku7TcgfAhCAQC4JPPzww3bllVfaiSeeaHfccUcu61hPpRCwmZOvJHz44YfbGWecYZMnT66HIWEhAAEIQKAGgZkzZ9r06dPt+eefd/KVhIu+IWAz9/zjc889171kQM9rnjp1qvXp02f3s5uL3kmoPwQgAIG4BPT8dT2Tfdq0ae4Z+XrX+D333OPeKV70DQF/2ANmzZrlzknMmDHDvT+3b9++CLjoewf1hwAE2kxAL3PR29/0c8qUKW6FcdKkSW1ONw8JIOCSVtR7YGfPnm1z5syxVatWudcIskEAAhCAQHwCWk3UrHfChAk2ceJE955ytv8SQMARPUHy1UfLJWwQgAAEIBCfgAQ8ZMgQ7jCJQIiA4/crYkIAAhCAAARiE0DAsdEREQIQgAAEIBCfAAKOz46YEIAABCAAgdgEEHBsdESEAAQgAAEIxCeAgOOzIyYEIAABCEAgNgEEHBsdESEAAQhAAALxCSDg+OyICQEIQAACEIhNAAHHRkdECEAAAhCAQHwCCDg+O2JCAAIQgAAEYhNAwLHRERECEIAABCAQnwACjs+OmBCAAAQgAIHYBBBwbHREhAAEIAABCMQngIDjsyMmBCAAAQhAIDYBBBwbHREhAAEIQAAC8Qkg4PjsiAkBCEAAAhCITQABx0ZHRAhAAAIQgEB8Agg4PjtiQgACEIAABGITQMCx0RERAhCAAAQgEJ8AAo5gt2rVKtNnw4YN8ckSEwIQgAAErE+fPjZkyBAbNGgQNMoIIOASIMuXL7fZs2fbnDlznIA3btxIh4EABCAAgTYQkIAHDx5sEyZMsIkTJ9ro0aPbkFq+oiLgD9tz7ty59sQTT9iMGTOspaXF+vbtaz179sxXa1MbCEAAAg0msGXLFlu7dq3p55QpU+ykk06yQw45pMGlyGZ2CNjMPvjgA7voootsyZIlTrpTp051yyYIOJudllJBAALNQ2Dr1q22Zs0amzZtmjutN3LkSLvzzjutd+/ezVOJdiopAjazxx9/3Al40qRJdtZZZ9nkyZPbCTfJQgACECgmgZkzZ9p9991ns2bNcgI+/vjjiwmipNYI2MwuvPBCt/R83XXX2emnn174TgEACEAAAu1B4MEHH7Srr77ajjvuOLvrrrvaI4umShMBm9lhhx1mK1ascBdg6Wo9NghAAAIQSJ6ALm7VhVjDhg2zF154IfkMmixFBGxm48aNc8321ltvNVnzUVwIQAACzUWA8fZ/7YWAEXBz7b2UFgIQaGoCCBgB79GB6RBNvT9TeAhAoIkIMN4iYATcRDssRYUABPJDAAEjYAScn/2ZmkAAAk1EAAEjYATcRDssRYUABPJDAAEjYAScn/2ZmkAAAk1EAAEjYATcRDssRYUABPJDAAEjYATcxv15x44d7vmu3bp1c8/NZoMABCAQQgABI2AEHLKnVAmjN5vowSX9+vWz4cOHtzE1okMAAkUhgIARMAJu496OgNsIkOgQKCgBBIyAYwlYy656r2XXrl3duy137tzp3h3cvXt3twyr3/22ceNG00dhtHXq1MmFUdzW1lZbv369S0O/K16XLl3cO4g7duxY9XuFfe+996xz585u9qlNr1NUXr169XIfbVoeVtoDBw50f6vsynP79u3u/8pHrwNT2f33qpuWlPX6MIXT7/3793ffb9u2zd5//333f5WhQ4cO9u677zIDLuggSrUhEJcAAkbAsQQsYS5YsMDJT8LUZ9OmTU6ye+211x7vt5QAJUaF0ff6XTLTQ8j1TsylS5c6GesjOUqIQ4cOdT+rfS/5aelXP9WR9XPRokVOrgMGDLB99tnHpTd//nyX9pgxY5xw9RD0devWWY8ePVweErbqofJItL5uiqNNYtZHZd61a5etXLnS5SHBK77qrY/yZAk67lBEPAgUjwACRsCxBSz5SUCjRo1ygpIslyxZ4sQ2evTo3elqFilxSW766aW53377OZlJiCNGjHCC06xSklZYbbW+f+edd9xsVB1ZM1H/Egn9rv9JjIsXL3ZvdtJn8+bNTtIq49577+1m45LxsmXL3AxZEvZLykpDYUpn9JK10pN8JVuFUfn1BqlBgwYh4OKNodQYArEJIGAE3CYBS0QSsN8WLlzoBCa5Sm7aJEG/BK1ZqmbE+jl+/HgnT8lPs00tA0uMkrlfwq71vdJSfD/z1O9ajpZUR44c6YQrQaqMSl9L1grjha/y6aBAs2TJdN99990t4J49e7p4pcvpUfFVP60G6ACCGXDssYiIECgcAQSMgNsk4PIrfzUD1hKzRCapSk4SoGa1kqskVypgyU+y1OxZM2V/flgyU9ha3yuOZr06Z6ywEr3kqlmqloR1vlYSVnmUts7VaraqGbqE7DcJVGF1UFDtoqqo+FyEVbhxkwpDIBECCBgBt0nApTNgnV/VDFhS9DNgLSFLWlrKlVQ1m9RsU+dmJTu/SX6Sp2QsoUmQ/qIohan0vfL0y84SsKSvc79+mdsvZ/tZuuSvc85RM2CVTeWuJtSoGbAEr/yYAScyJpEIBApDAAEj4DYJuPwcsGaeWrr154CXL19uq1evdn9L1v48seKVCliF8BdISdg+fGnhKn0voUrc2nQOV+dytcysK5kVRxd0DR482H0vueogofwcsNJQPF1AVk3AOkjQOWTNnv05YNVP9VR8lqALM3ZSUQi0mQACRsBtFrBmqpWugtY5XMlNF1Xpo9miv/1HApaQ9ZEotUlwkrNEpjRrfa84Eq0uxlI8dWjNgpWvlsO1lcpc+UjwilN6FbSWpyVv1aWagDXLlmy1zO6vglZ4lZsZcJvHIxKAQKEIIGAE3CYBS0KSVqX7gP05XC0hS34SncQqCeuq4XLB6ryv0tQsWlut7/3ytIQqAWsWqqVk/3hI/a5zwfrObyqrbiPyZdJ3ylNC1lbr0ZJaYpfgFU7pS/hKU/XiUZSFGj+pLATaRAABI+A2CZjHL7Zp/yMyBCBQYAIIGAEj4AIPAFQdAhBIjwACRsCxBFxrmTa9Lk3OEIAABJqDAAJGwLEE3Bzdm1JCAAIQyC4BBIyAEXB2909KBgEI5JgAAkbACDjHOzhVgwAEsksAASNgBJzd/ZOSQQACOSaAgBEwAs7xDk7VIACB7BJAwAh4j9555JFHuidXvfTSS+5BGWwQgAAEIJA8AT3C9tBDD3VP/Xv22WeTz6DJUmxp9c9DbLKCJ1ncSy+91B577DG78cYb7bTTTksyadKCAAQgAIEPCTz88MN25ZVX2oknnmh33HFH4bkgYDMnX0n48MMPtzPOOMMmT55c+I4BAAhAAAJJEpg5c6ZNnz7dnn/+eSdfSbjoGwI2c28VOvfcc90LC/Q85qlTp7rnG/tnMxe9k1B/CEAAAnEJ6DnyeiXqtGnT3HPu9Za2e+65x/RI36JvCPjDHjBr1ix3TmLGjBnuZQN62T0CLvruQf0hAIG2EtCb0/TiGP2cMmWKW2GcNGlSW5PNRXwEXNKMeuXe7Nmzbc6cObZq1Sr3uj02CEAAAhCIT0CriZr1TpgwwSZOnLj7venxU8xPTAQc0ZaSrz5aLmGDAAQgAIH4BCTgIUOGcIdJBEIEHL9fERMCEIAABCAQmwACjo2OiBCAAAQgAIH4BBBwfHbEhAAEIAABCMQmgIBjoyMiBCAAAQhAID4BBByfHTEhAAEIQAACsQkg4NjoiAgBCEAAAhCITwABx2dHTAhAAAIQgEBsAgg4NjoiQgACEIAABOITQMDx2RETAhCAAAQgEJsAAo6NjogQgAAEIACB+AQQcHx2xIQABCAAAQjEJoCAY6MjIgQgAAEIQCA+AQQcnx0xIQABCEAAArEJIODY6IgIAQhAAAIQiE8AAcdnR0wIQAACEIBAbAIIODY6IkIAAhCAAATiE0DA8dkREwIQgAAEIBCbAAKOjY6IEIAABCAAgfgEEHB8dsSEAAQgAAEIxCaAgGOjIyIEIAABCEAgPgEEHJ8dMSEAAQhAAAKxCSDg2OiICAEIQAACEIhPAAHHZ0dMCEAAAhCAQGwCCDg2OiJCAAIQgAAE4hNAwPHZERMCEIAABCAQmwACjo2OiBCAAAQgAIH4BBBwfHbEhAAEIAABCMQmgIBjoyMiBCAAAQhAID4BBBzB7t1337WtW7fGp0pMCECgzQS6du1qgwcPbnM69SSwc+dO27Vrl7W2ttYTjbBVCLS0tFiHDh2sY8eOcCojgIBLgLzxxhv2/PPP25IlSxAwuwoEUiYgAY8aNcqOOOII23///du1NDrg3rBhg23ZssUkYQScHG4JWPLt1q2b9erVy9SubP8lgIA/7Amvvvqq3X333fbcc8/Z5s2b6R8QgEAGCPTo0cOOPPJIO//88+3AAw9slxJt3LjRtOqln9u2bWuXPEjUrEuXLtazZ0+3qqGfbAjY9YH169fbd7/7XXv66afpExCAQAYJHHPMMXbTTTdZnz59Ei2dZrsLFy60Dz74INF0Sawygd69e9uYMWNYkmYG/N9O8sgjj9j3v/999hkIQCCjBLSEecstt9jJJ5+caAl18L1gwYJE0ySx2gTGjh1rffv2rR0w5yFYgjaz0047zebMmZPzpqZ6EGhuAocffrjdf//9iVZCs99169YlmiaJ1SbQr18/Nwsu+oaAzdy5Jc77Fn1XoP5ZJ6Dl57lz5yZaTF37oWVotsYS0IrGQQcd1NhMM5gbAjazcePGZbBpKBIEIFBO4K233koUStJCT7RwOU/skEMOyXkNa1cPASPg2r2EEBDICAEEnJGGSKAYCJiroF03YgacwN5EEhBoAAEE3ADIDcoCASNgBNygnY1sIJAEAQScBMVspIGAETACzsa+SCkgEEQAAQdhaopACBgBI+Cm2FUpJAT+SwAB56cnIGAEjIDzsz9TkwIQQMD5aWQEjIARcMr784gRI+zYY4+1NWvW2KOPPtqw0qSVb8MqmNOMEHD7N6ye2awHZezYscPtl+21IWAEjIDba+8KTHfixIl22223uaXFM888MzBW24Mh4LYzTCMFBNz+1PWsZr2FSm+Gmj9/frtliIARMAJut90rLOG0BBxWOkJljQACbv8WQcDtz9jnwIM4uA+4cb0tIqdqAj7llFNsn3322R3r7bffjlymPuOMM2zAgAEunF4pp0cL6lF3TzzxhL3zzjuR9YuaAfv/vf/+++6tO/6VaUqzWlqpAixY5s0kYPVJLef6Ta86LF/SHTRokHXq1Gl3mF27drlnU/vXIvrlYN+n9WJ7beXhfAIheZaH0WN49VIKvyHgxu1UCBgBN6631SFgSfUb3/iGrVq1ymbPnm0S9ZAhQ+yuu+7aQ8IK981vftNefvllk6Albb1lRctnesWk4kZtUeL3/9PgtmTJEnvxxRddvuPHj7dp06bZT37yk1RZkXnzXAUtseq9t+qHElz37t3dC+lXrly5W8IKoz6tA7ytW7e6MHphvSS9dOlS19xehq2trU7Kem2i/qew2jdWrFixu1uE5Cn5Dhs2zLZv3747LUld70P2BwcIuHF7GgJGwI3rbYEC/uxnP2t33HGHLV++3L0DViLU/2644QY3u7344ott3rx57n86f/z666/btdde62a7CvPFL37R1q5dG1vAnTt3tiuuuMJmzpzp8lBZVq9ebeedd17FGXWqEAuUeTPMgCVHPV1PwtRBoRewVlUkPonOh5F4Fy9e7ML6/+kAUOde9T8vw5aWFndQqJmqJD169Gh3kZRepVgat1aeiufT2rBhg0tr5MiRJsEvWrTIlRUBN26HQsAIuHG9LVDAV111lWlm+5vf/Mauv/763bFuvvlmO+GEE+zuu+92M2H9PWXKFLv99tvdDFWbZqv33nuvG2TizoA1q5DE/ablZw1K1dJLFWKBMm8GAWuGOXToUHfQ5mey5U0k2UrImiFLmvpdfVazZslQUvazXV0QpTD//ve/dyfz8Y9/3J1m8eFC8vRhdHAqmftNAu7fv78tW7bMzYQRcON2KASMgBvX2wIFfOONN9pJJ51kt956626xKuq3v/1tO/fcc90S9JVXXmm//vWv7eCDD7Yf/ehHeyxLhwiz2hJ0+RXZIemlCrFAmTeDgMuFVql5/Plfv/Tsrz2IEnD5FcnlAg7JU2G0BK0lb8ndbxJujx493JK2Vp0QcON2KASMgBvX2xIQ8DnnnGMPPfSQmxkj4FSbLpXM8yJgv4ysJWktK/uLqrR0XTqzrSTDJAXsG1JL0vog4MZ1bQSMgBvX2wIFXG0JunTJub2WoJkBp9olqmbeDAIePny4W0rWcm6lJWiF0QxYF2X5C6n8OWABKF+CrjUDDs0zqly6aFEXiGkGzjngxvZ9BIyAG9vjynKLWgpO4iIsDWp6sEel25BYgk612WNn3gwC9rPb0gui/O1Emunq3LAXcOl5Yt1yN3DgQHehob/gKnQGHJKnv+BK6evAQLNdSV/5atbNRVixu2XsiAgYAcfuPElErHQfcNRtSDpKnz59etXbkHSRls5z6UpTPeKy0oaAk2i9xqfRDAIWlfJbgrp27eruK9d5VklXMpSEJT5/+48uhNKFWLoKv9YFUeVL0CF5Kkz5bUhRt0exBN24fo2AEXDjeltETtUeCVn+II5//etf7tag8q30QRwa5I455hh3G1Lplczlcao9iKP8udRKXwMoD+NItau4zJtFwF52pQ/i0G1Dkq/ftPQrAfpN32uGrDj+fGyl5zJL8Lp/t/ShHSF5RoUpf0AIz4JuXD9HwAi4cb0t4ZyOPvpoO+CAA6xUzGeffbZdcskl9uSTT9rll1+ecI4klzaBZhJw2qyynj/PguZZ0K6P6spDtuYjIAFfffXV7uKRp556ylXgqKOOcrdZ6D5hPcCDLV8EEHB+2hMBI2AE3OT7c/kytZbw9FhK5NvkDVuh+Ag4P+2KgBEwAs7P/kxNCkAAAeenkREwAkbA+dmfqUkBCCDg/DQyAkbACDg/+zM1KQABBJyfRkbACBgB52d/piYFIICA89PICBgBI+D87M/UpAAEEHB+GhkBI2DXmw866CB36wobBCCQXQJ6etQrr7ySaAFfffVV9+hHtsYS0BPANO4WfeNBHGb2la98xd26wgYBCGSXgJ4R/sADDyRawIULF7qnSbE1lkC/fv1szJgxjc00g7khYDN7+OGH3ftl2SAAgWwS0IzplltusZNPPjnRAupVgAsWLEg0TRKrTWDs2LGmR3EWfUPAZu65wZdddpk988wzRe8P1B8CmSSgF2vcdNNN7l21SW5aftYsuPQF9UmmT1ofJaA21OxXB1VF3xDwhz1A55buuecee/bZZ907MdkgAIH0CfTo0cOOOOIIu+CCC9xzv9tj0/UfenevfurFBGztQ0AvedDLUvROYv1k4yKsPfrAvHnz7LnnnnMvw2ZHZPeAQLoE9AaqUaNGOQHvv//+7VqYrVu3ujcQ6cX3mhW3tra2a35FSlyvWNRsV68T1YV0ale2/xJgBhzRE3Q0rB2SDQIQSI+ABmy9dq+Rm+Sr54kj4OSoS8B6dSJLzh9lioCT62ekBAEIQAACEAgmgICDUREQAhCAAAQgkBwBBJwcS1KCAAQgAAEIBBNAwMGoCAgBCEAAAhBIjgACTo4lKUEAAhCAAASCCSDgYFQEhAAEIAABCCRHAAEnx5KUIAABCEAAAsEEEHAwKgJCAAIQgAAEkiOAgJNjSUoQgAAEIACBYAIIOBgVASEAAQhAAALJEUDAybEkJQhAAAIQgEAwAQQcjIqAEIAABCAAgeQIIODkWJISBCAAAQhAIJgAAg5GRUAIQAACEIBAcgQQcHIsSQkCEIAABCAQTAABB6MiIAQgAAEIQCA5Agg4OZakBAEIQAACEAgmgICDUREQAhCAAAQgkBwBBJwcS1KCAAQgAAEIBBNAwMGoCAgBCEAAAhBIjgACTo4lKUEAAhCAAASCCSDgYFQEhAAEIAABCCRHAAEnx5KUIAABCEAAAsEEEHAwKgJCAAIQgAAEkiOAgJNjSUoQgAAEIACBYAIIOBgVASEAAQhAAALJEUDAybEkJQhAAAIQgEAwAQQcjIqAEIAABCAAgeQIIODkWJISBCAAAQhAIJgAAg5GRUAIQAACEIBAcgQQcHIsSQkCEIAABCAQTAABB6MiIAQgAAEIQCA5Agg4OZakBAEIQAACEAgmgICDUREQAhCAAAQgkBwBBJwcS1KCAAQgAAEIBBNAwMGoCAgBCEAAAhBIjgACTo4lKUEAAhCAAASCCSDgYFQEhAAEIAABCCRHAAEnx5KUIAABCEAAAsEEEHAwKgJCAAIQgAAEkiOAgJNjSUoQgAAEIACBYAIIOBgVASEAAQhAAALJEUDAybEkJQhAAAIQgEAwAQQcjIqAEIAABCAAgeQIIODkWJISBCAAAQhAIJgAAg5GRUAIQAACEIBAcgQQcHIsSQkCEIAABCAQTAABB6MiIAQgAAEIQCA5Agg4OZakBAEIQAACEAgmgICDUREQAhCAAAQgkBwBBJwcS1KCAAQgAAEIBBNAwMGoCAgBCEAAAhBIjgACTo4lKUEAAhCAAASCCSDgYFQEhAAEIAABCCRHAAEnx5KUIAABCEAAAsEEEHAwKgJCAAIQgAAEkiOAgJNjSUoQgAAEIACBYAIIOBgVASEAAQhAAALJEUDAybEkJQhAAAIQgEAwAQQcjIqAEIAABCAAgeQISMAbzaxHckmSEgQgAAEIQAACNQhskoDnmNn/gQoCEIAABCAAgYYRmCMB32BmP2hYlmQEAQhAAAIQgMANEvBBZvY3M+sCDwhAAAIQgAAE2p3ANjP7TIuyaW1tnW5mZ7Z7lmQAAQhAAAIQgMCvW1pazvICHm9m15jZKcyE6RkQgAAEIACBdiGgme+j8m1LS8s8J+APZ8GSsAT8aTP7uJmN4urodmkAEoUABCAAgeIQ2GRmi83sDTN7WQKWfFX9/w9lxQBMkMIEMAAAAABJRU5ErkJggg=="
					id="proto-image" class="js-proto-image"></image>
      </svg>
			<div id="js-break-parts" class="break-parts"
				style="display: none; z-index: 2; opacity: 1; transform: translate(0px, 0px);">
				<div id="js-svg-overlay" class="svg-overlay"
					style="transform: translate(-900px, 1000px) rotate(-50deg); display: block;">
					<svg viewBox="0 0 480 450" id="js-svg1">
            <clippath id="clip1">
              <path
							d="M0,450.575574 L0,0 L424.903452,0 L452.375,28.5599486 L20.5087638,460.426185 L0,450.575574 Z"></path>
            </clippath>
            <use xlink:href="#proto-image" clip-path="url(#clip1)"
							id="js-image1"></use>
          </svg>
				</div>
				<div class="svg-overlay svg-overlay--2"
					style="transform: translate(-1670px, -800px) rotate(905deg); display: block;">
					<svg viewBox="0 0 480 450" id="js-svg2">
            <clippath id="clip2">
              <path
							d="M452.214614,28.6494713 L424.309513,0 L482.040672,0 L452.214614,28.6494713 Z"></path>
            </clippath>
            <use xlink:href="#proto-image" clip-path="url(#clip2)"
							id="js-image2"></use>
          </svg>
				</div>
				<div class="svg-overlay svg-overlay--3"
					style="transform: translate(1000px, 700px) rotate(-1500deg); display: block;">
					<svg viewBox="0 0 480 450" id="js-svg3">
            <clippath id="clip3">
              <path
							d="M452.320312,28.526424 L482,58 L482,0.066291362 L452.320312,28.526424 Z"></path>
            </clippath>
            <use xlink:href="#proto-image" clip-path="url(#clip3)"
							id="js-image3"></use>
          </svg>
				</div>
				<div class="svg-overlay"
					style="transform: translate(0px, 1000px) rotate(-15deg); display: block;">
					<svg viewBox="0 0 480 450" id="js-svg4">
            <clippath id="clip4">
              <path
							d="M452.270844,28.4954427 L482,57.8942871 L482,451 L29.2740886,450.99999 L452.270844,28.4954427 Z"></path>
            </clippath>
            <use xlink:href="#proto-image" clip-path="url(#clip4)"
							id="js-image4"></use>
          </svg>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="../js/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/howler.min.js"></script>
	<script type="text/javascript" src="../js/tween.min_1.js"></script>
	<script type="text/javascript" src="../js/html2canvas.js"></script>
	<script type="text/javascript" src="../js/index.js"></script>

</body>
</html>