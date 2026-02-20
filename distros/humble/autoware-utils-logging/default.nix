
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, logging-demo, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-logging";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_logging/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "f219a91c1c7b38895bb27d4220c0343ee362ba5b4f0857ac7eb1d26b849cdec2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ logging-demo rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_logging package";
    license = with lib.licenses; [ asl20 ];
  };
}
