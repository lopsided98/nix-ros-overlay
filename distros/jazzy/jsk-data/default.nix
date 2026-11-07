
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-freezegun, _unresolved_python3-gdown-pip, ament-cmake, ament-cmake-python, ament-index-python, cv-bridge, geometry-msgs, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python3Packages, rclpy, ros-environment, ros2bag, std-srvs, tf2-ros, wget }:
buildRosPackage {
  pname = "ros-jazzy-jsk-data";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_data/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "3400724b709b484fb2ebfd854f565672408b7fd5e486fcd436d7327f13d526e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ _unresolved_python3-freezegun launch-ros launch-testing launch-testing-ament-cmake python3Packages.imageio python3Packages.nose ];
  propagatedBuildInputs = [ _unresolved_python3-gdown-pip ament-index-python cv-bridge geometry-msgs image-transport jsk-ros1-ros2-compat message-filters python3Packages.click python3Packages.paramiko python3Packages.pyyaml rclpy ros2bag std-srvs tf2-ros wget ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment ];

  meta = {
    description = "The jsk_data package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
