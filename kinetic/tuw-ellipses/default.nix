
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, cmake-modules, tf, catkin, marker-msgs, image-transport, eigen, cv-bridge, nodelet, roscpp, rospy, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-tuw-ellipses";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_ellipses/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "e7084fd0b85be3b40470e512d2f14e9db9ef1f75812361e1061dd4b691b10fdd";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure tf cmake-modules marker-msgs image-transport eigen cv-bridge nodelet roscpp rospy image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure tf marker-msgs image-transport cv-bridge nodelet roscpp rospy image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_ellipses package contains a computer vision library which is able to detect ellipses within images.  
    The package is able to estimate the pose of the circle related to the ellipse the circle diameter as well as the camera parameter are known.
    A dynamic reconfigure interface allows the user to tune the parameter of the system to ones needs.
    But be aware that the pose of a projected circle within a image (ellipse) has two solutions and only one is published as TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
