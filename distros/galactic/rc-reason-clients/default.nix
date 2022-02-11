
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, pythonPackages, rc-reason-msgs, rclpy, ros2pkg, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-rc-reason-clients";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients-release/archive/release/galactic/rc_reason_clients/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "3825ba19925bfd8373d590e7d9f9954bb1b0d9bd0d5acd9addd07166ba8add02";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.requests rc-reason-msgs rclpy ros2pkg tf2-msgs visualization-msgs ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
