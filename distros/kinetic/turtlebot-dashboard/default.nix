
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-dashboard, kobuki-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-dashboard";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/turtlebot_dashboard/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "e1adf8ce1d7f6a2dfb5a3f35006a460397281a5b26e267000bc7787677697434";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ create-dashboard kobuki-dashboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchers for the base-specific dashboards'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
