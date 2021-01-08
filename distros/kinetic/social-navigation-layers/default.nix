
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, people-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-social-navigation-layers";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/kinetic/social_navigation_layers/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "b91f57c0dccbe5ca62c5bb704003413904caf8c9ca0ba32c66f8706c12c03016";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure people-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-based layers for the navigation stack that 
  implement various social navigation contraints, like proxemic distance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
