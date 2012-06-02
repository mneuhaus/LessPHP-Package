<?php
namespace LessPHP;

/*                                                                        *
 * This script belongs to the FLOW3 package "LessPHP".                    *
 *                                                                        *
 * It is free software; you can redistribute it and/or modify it under    *
 * the terms of the GNU Lesser General Public License, either version 3   *
 *  of the License, or (at your option) any later version.                *
 *                                                                        *
 * The TYPO3 project - inspiring people to share!                         *
 *                                                                        */

use \TYPO3\FLOW3\Package\Package as BasePackage;

/**
 * The LessPHP Package
 */
class Package extends BasePackage {
	public function boot(\TYPO3\FLOW3\Core\Bootstrap $bootstrap) {
		require(__DIR__ . '/../Resources/PHP/LessPHP/lessc.inc.php');
	}
}

?>