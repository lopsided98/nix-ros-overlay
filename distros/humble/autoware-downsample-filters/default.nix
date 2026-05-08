
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-point-types, autoware-utils-debug, autoware-utils-system, autoware-utils-tf, pcl-conversions, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-downsample-filters";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_downsample_filters/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "c110dbb23020086dea4642a0cb1872c2f4bf5e63b2137fd4861011180a64a198";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-point-types autoware-utils-debug autoware-utils-system autoware-utils-tf pcl-conversions rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_downsample_filters package";
    license = with lib.licenses; [ asl20 ];
  };
}
