
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-gdown-pip, ament-cmake, ament-cmake-python, ament-index-python, cv-bridge, geometry-msgs, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python3Packages, rclpy, ros-environment, ros2bag, std-srvs, tf2-ros, wget }:
buildRosPackage {
  pname = "ros-jazzy-jsk-data";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_data/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "c6893454a7126c3402d133fc899ea9329c7af076c5e305f69378ac7a1cf3338d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake python3Packages.freezegun python3Packages.imageio python3Packages.nose ];
  propagatedBuildInputs = [ _unresolved_python3-gdown-pip ament-index-python cv-bridge geometry-msgs image-transport jsk-ros1-ros2-compat message-filters python3Packages.click python3Packages.paramiko python3Packages.pyyaml rclpy ros2bag std-srvs tf2-ros wget ];
  nativeBuildInputs = [ ament-cmake jsk-ros1-ros2-compat ros-environment ];

  meta = {
    description = "The jsk_data package";
    license = with lib.licenses; [ bsd3 ];
  };
}
