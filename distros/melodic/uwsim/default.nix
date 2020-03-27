
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dccomms-ros, fftw, fftwSinglePrec, geographiclib, geometry-msgs, image-transport, interactive-markers, kdl-parser, libGL, libGLU, libxmlxx, muparser, nav-msgs, openscenegraph, osg-interactive-markers, osg-markers, osg-utils, pcl-ros, pluginlib, resource-retriever, robot-state-publisher, roscpp, sensor-msgs, tf, underwater-sensor-msgs, urdf, uwsim-bullet, uwsim-osgbullet, uwsim-osgocean, uwsim-osgworks, xacro }:
buildRosPackage {
  pname = "ros-melodic-uwsim";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/uwsim/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "92afdf72aa7141f92f121e15c367606f35a72dce8ed3382aed7b11e4183c598a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost dccomms-ros fftw fftwSinglePrec geographiclib geometry-msgs image-transport interactive-markers kdl-parser libGL libGLU libxmlxx muparser nav-msgs openscenegraph osg-interactive-markers osg-markers osg-utils pcl-ros pluginlib resource-retriever robot-state-publisher roscpp sensor-msgs tf underwater-sensor-msgs urdf uwsim-bullet uwsim-osgbullet uwsim-osgocean uwsim-osgworks xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UWSim is an UnderWater SIMulator for marine robotics research and development. UWSim visualizes an underwater virtual scenario that can be configured using standard modeling software. Controllable underwater vehicles, surface vessels and robotic manipulators, as well as simulated sensors, can be added to the scene and accessed externally through ROS interfaces. This allows to easily integrate the visualization tool with existing control architectures.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
