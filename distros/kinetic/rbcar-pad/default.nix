
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, diagnostic-msgs, diagnostic-updater, geometry-msgs, robotnik-msgs, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-pad";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_common-release/archive/release/kinetic/rbcar_pad/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "dd5731756cb7be109ec2c54b03453373602ca4a0a7d7deb75a0a95b24f4d2934";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ackermann-msgs diagnostic-msgs diagnostic-updater geometry-msgs robotnik-msgs roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_pad package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
