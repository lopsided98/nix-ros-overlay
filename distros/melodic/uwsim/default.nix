
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dccomms-ros, fftw, fftwSinglePrec, geographiclib, geometry-msgs, image-transport, interactive-markers, kdl-parser, libGL, libGLU, libxmlxx, muparser, nav-msgs, openscenegraph, osg-interactive-markers, osg-markers, osg-utils, pcl-ros, pluginlib, resource-retriever, robot-state-publisher, roscpp, sensor-msgs, tf, underwater-sensor-msgs, urdf, uwsim-bullet, uwsim-osgbullet, uwsim-osgocean, uwsim-osgworks, xacro }:
buildRosPackage {
  pname = "ros-melodic-uwsim";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/uwsim/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "c1ca2ee772888d4cc33f58ee5399ad49b0b9fb36362c009236bebd82ecf091ac";
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
