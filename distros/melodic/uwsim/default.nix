
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dccomms-ros, fftw, fftwSinglePrec, geographiclib, geometry-msgs, image-transport, interactive-markers, kdl-parser, libGL, libGLU, libxmlxx, muparser, nav-msgs, openscenegraph, osg-interactive-markers, osg-markers, osg-utils, pcl-ros, pluginlib, resource-retriever, robot-state-publisher, roscpp, sensor-msgs, tf, underwater-sensor-msgs, urdf, uwsim-bullet, uwsim-osgbullet, uwsim-osgocean, uwsim-osgworks, xacro }:
buildRosPackage {
  pname = "ros-melodic-uwsim";
  version = "1.4.2-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uji-ros-pkg";
        repo = "underwater_simulation-release";
        rev = "release/melodic/uwsim/1.4.2-3";
        sha256 = "sha256-dG7WN7SpOjjgzixDSf5sSi3qfxn1udcKcTvsOP71zO4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost dccomms-ros fftw fftwSinglePrec geographiclib geometry-msgs image-transport interactive-markers kdl-parser libGL libGLU libxmlxx muparser nav-msgs openscenegraph osg-interactive-markers osg-markers osg-utils pcl-ros pluginlib resource-retriever robot-state-publisher roscpp sensor-msgs tf underwater-sensor-msgs urdf uwsim-bullet uwsim-osgbullet uwsim-osgocean uwsim-osgworks xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UWSim is an UnderWater SIMulator for marine robotics research and development. UWSim visualizes an underwater virtual scenario that can be configured using standard modeling software. Controllable underwater vehicles, surface vessels and robotic manipulators, as well as simulated sensors, can be added to the scene and accessed externally through ROS interfaces. This allows to easily integrate the visualization tool with existing control architectures.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
