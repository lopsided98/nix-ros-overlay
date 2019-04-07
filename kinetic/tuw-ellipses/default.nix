
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, cmake-modules, tf, image-transport, catkin, cv-bridge, image-geometry, nodelet, rospy, dynamic-reconfigure, roscpp, eigen }:
buildRosPackage {
  pname = "ros-kinetic-tuw-ellipses";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_ellipses/0.0.7-0.tar.gz;
    sha256 = "e7084fd0b85be3b40470e512d2f14e9db9ef1f75812361e1061dd4b691b10fdd";
  };

  buildInputs = [ marker-msgs cmake-modules tf image-transport cv-bridge roscpp image-geometry dynamic-reconfigure rospy nodelet eigen ];
  propagatedBuildInputs = [ marker-msgs tf image-transport cv-bridge roscpp image-geometry dynamic-reconfigure rospy nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_ellipses package contains a computer vision library which is able to detect ellipses within images.  
    The package is able to estimate the pose of the circle related to the ellipse the circle diameter as well as the camera parameter are known.
    A dynamic reconfigure interface allows the user to tune the parameter of the system to ones needs.
    But be aware that the pose of a projected circle within a image (ellipse) has two solutions and only one is published as TF.'';
    #license = lib.licenses.BSD;
  };
}
