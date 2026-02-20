
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-interpolation, autoware-lint-common, autoware-perception-msgs, autoware-utils-geometry, autoware-utils-math, boost, geometry-msgs, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-msgs, tf2, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-autoware-object-recognition-utils";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_object_recognition_utils/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "560737393daf3b53d8236996f481e6d2cb2df081104db55daca133f853b1a71c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-interpolation autoware-perception-msgs autoware-utils-geometry autoware-utils-math boost geometry-msgs pcl-conversions pcl-ros rclcpp sensor-msgs std-msgs tf2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_object_recognition_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
