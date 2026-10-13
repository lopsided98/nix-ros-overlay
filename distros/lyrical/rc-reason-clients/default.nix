
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rc-reason-clients";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/lyrical/rc_reason_clients/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "f29af1ba140c27b987cd6a0bb84b48b645a4607e8e6810fc9b74fdf2cfa80af6";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.grpcio-tools ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.grpcio python3Packages.protobuf python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = "Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
