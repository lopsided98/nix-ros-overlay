
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, robotnik-msgs, ackermann-msgs, diagnostic-updater, std-msgs, diagnostic-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-pad";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_common-release/archive/release/kinetic/rbcar_pad/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "dd5731756cb7be109ec2c54b03453373602ca4a0a7d7deb75a0a95b24f4d2934";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs diagnostic-updater std-msgs diagnostic-msgs roscpp ackermann-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs diagnostic-updater std-msgs diagnostic-msgs roscpp ackermann-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_pad package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
