
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, nav-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-simple-common";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_simple_common/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "cee9bc451943aa9a74f77a5385041329726c7d5ea8b4f576e41d4af4b97bc7dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
