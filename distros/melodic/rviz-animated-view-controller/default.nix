
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-transport, libGL, libGLU, pluginlib, qt5, rviz, std-msgs, view-controller-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-animated-view-controller";
  version = "0.2.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rviz_animated_view_controller-release";
        rev = "release/melodic/rviz_animated_view_controller/0.2.0-2";
        sha256 = "sha256-oqcLyN8xVxsRPPHmsFMY8KPUdI/mhY1Fkf4/VJXbcok=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules cv-bridge eigen geometry-msgs image-transport libGL libGLU pluginlib qt5.qtbase rviz std-msgs view-controller-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A rviz view controller featuring smooth transitions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
