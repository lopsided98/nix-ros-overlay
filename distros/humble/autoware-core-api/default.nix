
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-adaptors, autoware-cmake, autoware-default-adapi, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-core-api";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_api/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "3e46c21c23f5a8616a2e3bd03225528da98c4d4b63fa281455c8bb0ea29b1ad9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-adaptors autoware-default-adapi ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_api package";
    license = with lib.licenses; [ asl20 ];
  };
}
