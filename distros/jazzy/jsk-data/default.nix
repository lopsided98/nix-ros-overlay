
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-freezegun, _unresolved_python3-gdown-pip, ament-cmake, ament-cmake-python, cv-bridge, geometry-msgs, image-transport, jsk-ros1-ros2-compat, launch-ros, launch-testing, launch-testing-ament-cmake, message-filters, python3Packages, rclpy, ros2bag, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-jsk-data";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_data/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "5ec2216951184d5589854f8904562103d2ab50e7806ad3a22955f81b771e4e94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ _unresolved_python3-freezegun launch-ros launch-testing launch-testing-ament-cmake python3Packages.imageio python3Packages.nose ];
  propagatedBuildInputs = [ _unresolved_python3-gdown-pip cv-bridge geometry-msgs image-transport jsk-ros1-ros2-compat message-filters python3Packages.click python3Packages.paramiko python3Packages.pyyaml rclpy ros2bag std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The jsk_data package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
