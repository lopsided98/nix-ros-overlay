
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, catkin, cmake-modules, eigen, geometry-msgs, image-transport, interactive-markers, laser-geometry, libGL, libGLU, libyamlcpp, map-msgs, media-export, message-filters, message-generation, message-runtime, nav-msgs, ogre1_9, pluginlib, python-qt-binding, qt5, resource-retriever, rosconsole, roscpp, roslib, rospy, rostest, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tinyxml-2, urdf, urdfdom, urdfdom-headers, visualization-msgs, python3 }:
let 
    python = python3.withPackages(python3Packages: [
        python3Packages.sip_4
        python3Packages.pyqt5
    ]);
in
  buildRosPackage {
    pname = "ros-noetic-rviz";
    version = "1.14.19-r1";
  
    src = let
        fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
      in
        fetchFromGithub {
          owner = "ros-gbp";
          repo = "rviz-release";
          rev = "release/noetic/rviz/1.14.19-1";
          sha256 = "sha256-Oi6jSUrbDPDkPW/nl1gKp5np7yk1VofHwzROt8B8mWg=";
        };
  
    buildType = "catkin";
    buildInputs = [ catkin cmake-modules eigen message-generation urdfdom urdfdom-headers python ];
    checkInputs = [ rostest rosunit ];
    propagatedBuildInputs = [ assimp geometry-msgs image-transport interactive-markers laser-geometry libGL libGLU libyamlcpp map-msgs media-export message-filters message-runtime nav-msgs ogre1_9 pluginlib python-qt-binding qt5.qtbase resource-retriever rosconsole roscpp roslib rospy sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros tinyxml-2 urdf visualization-msgs python ];
    nativeBuildInputs = [ catkin ];
  
    meta = {
      description = ''3D visualization tool for ROS.'';
      license = with lib.licenses; [ bsdOriginal "Creative-Commons" ];
    };
  }
