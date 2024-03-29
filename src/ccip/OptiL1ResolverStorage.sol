// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

library OptiL1ResolverStorage {
    struct Layout {
        mapping(bytes32 => bytes32) domainMapping;
        mapping(bytes32 => bool) enableWildcard;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256("optidomains.resolver.l1.metadata");

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}
