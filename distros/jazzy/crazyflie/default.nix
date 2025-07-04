
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, boost, crazyflie-interfaces, eigen, geometry-msgs, libusb1, motion-capture-tracking-interfaces, rclcpp, ros-environment, sensor-msgs, std-srvs, tf-transformations, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-crazyflie";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/jazzy/crazyflie/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c0089f4da147b5d51bbad7b753af522ffe798f0e0fbfe235c5262881e12e54db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost crazyflie-interfaces eigen geometry-msgs libusb1 motion-capture-tracking-interfaces rclcpp ros-environment sensor-msgs std-srvs tf-transformations tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 Package for Bitcraze Crazyflie robots";
    license = with lib.licenses; [ mit ];
  };
}
