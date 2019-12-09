
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, people-msgs, dynamic-reconfigure, pluginlib, catkin, roslint, costmap-2d, roscpp, angles }:
buildRosPackage {
  pname = "ros-melodic-social-navigation-layers";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/social_navigation_layers/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "106139809be8e491881b20b8510ca74eb2b73109bef94c30f1c58be452e2e4cd";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs people-msgs dynamic-reconfigure pluginlib costmap-2d roscpp angles ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs people-msgs dynamic-reconfigure pluginlib costmap-2d roscpp angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-based layers for the navigation stack that
  implement various social navigation contraints, like proxemic distance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
