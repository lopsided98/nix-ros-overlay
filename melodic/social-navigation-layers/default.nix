
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, roslint, people-msgs, catkin, angles, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-social-navigation-layers";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/social_navigation_layers/0.5.0-0.tar.gz;
    sha256 = "106139809be8e491881b20b8510ca74eb2b73109bef94c30f1c58be452e2e4cd";
  };

  buildInputs = [ costmap-2d pluginlib people-msgs angles dynamic-reconfigure roscpp geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-2d pluginlib people-msgs angles dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-based layers for the navigation stack that
  implement various social navigation contraints, like proxemic distance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
