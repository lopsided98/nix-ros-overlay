
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, autoware-cmake, boost, builtin-interfaces, rclcpp, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1e7737a8c52deafc5a28faf0241472d5f6437ae93e5e71cf2ee987fd628a1c86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ boost builtin-interfaces rclcpp unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
