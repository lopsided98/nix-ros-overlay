
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-interpolation, autoware-lint-common, autoware-perception-msgs, autoware-utils-geometry, autoware-utils-math, boost, geometry-msgs, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-object-recognition-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_object_recognition_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "72c65380218d17a439a5c7018ef925eea9372bb2f73a005480ec89013ac9964b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-interpolation autoware-perception-msgs autoware-utils-geometry autoware-utils-math boost geometry-msgs pcl-conversions pcl-ros rclcpp sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_object_recognition_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
