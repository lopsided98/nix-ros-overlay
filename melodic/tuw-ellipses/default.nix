
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, cmake-modules, tf, catkin, marker-msgs, image-transport, eigen, cv-bridge, nodelet, roscpp, rospy, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-tuw-ellipses";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_ellipses/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "6f40eb7c0d83f05f8dac8ce03ca8fd2c6a30876e06174e16d80d8909b84d8749";
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
