
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, cmake-modules, image-transport, cv-bridge, catkin, roscpp, image-geometry, nodelet, rospy, dynamic-reconfigure, tf, eigen }:
buildRosPackage {
  pname = "ros-kinetic-tuw-ellipses";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_ellipses/0.0.7-0.tar.gz;
    sha256 = "e7084fd0b85be3b40470e512d2f14e9db9ef1f75812361e1061dd4b691b10fdd";
  };

  buildInputs = [ marker-msgs cmake-modules image-transport cv-bridge roscpp image-geometry nodelet dynamic-reconfigure rospy tf eigen ];
  propagatedBuildInputs = [ marker-msgs tf image-transport cv-bridge image-geometry nodelet dynamic-reconfigure rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_ellipses package contains a computer vision library which is able to detect ellipses within images.  
    The package is able to estimate the pose of the circle related to the ellipse the circle diameter as well as the camera parameter are known.
    A dynamic reconfigure interface allows the user to tune the parameter of the system to ones needs.
    But be aware that the pose of a projected circle within a image (ellipse) has two solutions and only one is published as TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
