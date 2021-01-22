
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, pythonPackages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-rc-reason-clients";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients-release/archive/release/foxy/rc_reason_clients/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ad033a9a070702944c878c8dc5eb20c8c2f958321bb1516728edb3d808b18d42";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
