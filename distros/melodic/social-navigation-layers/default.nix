
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, people-msgs, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-social-navigation-layers";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/social_navigation_layers/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "106139809be8e491881b20b8510ca74eb2b73109bef94c30f1c58be452e2e4cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ angles costmap-2d dynamic-reconfigure geometry-msgs people-msgs pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-based layers for the navigation stack that
  implement various social navigation contraints, like proxemic distance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
