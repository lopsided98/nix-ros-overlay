
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-simple-controller-manager, moveit-fake-controller-manager, catkin, moveit-ros-control-interface }:
buildRosPackage {
  pname = "ros-lunar-moveit-plugins";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_plugins/0.9.12-1.tar.gz;
    sha256 = "bf8e944c853234c3121769be2b4e0e4632fd5cd2e0dad2371127b12748b3ce83";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager moveit-ros-control-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for moveit plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
