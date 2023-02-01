
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, freeglut, glew, image-transport, marti-common-msgs, message-generation, message-runtime, pkg-config, pluginlib, qt5, rosapi, roscpp, rqt-gui, rqt-gui-cpp, std-srvs, swri-transform-util, swri-yaml-util, tf, xorg }:
buildRosPackage {
  pname = "ros-noetic-mapviz";
  version = "1.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "mapviz-release";
        rev = "release/noetic/mapviz/1.4.2-1";
        sha256 = "sha256-LYhbsYxhTxTKtc5ttcCDiikDBdvihqj12RGBRjCnA6E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config ];
  propagatedBuildInputs = [ cv-bridge freeglut glew image-transport marti-common-msgs message-runtime pluginlib qt5.qtbase rosapi roscpp rqt-gui rqt-gui-cpp std-srvs swri-transform-util swri-yaml-util tf xorg.libXi xorg.libXmu ];
  nativeBuildInputs = [ catkin pkg-config qt5.qtbase ];

  meta = {
    description = ''mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
