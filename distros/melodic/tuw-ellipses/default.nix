
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, dynamic-reconfigure, eigen, image-geometry, image-transport, marker-msgs, nodelet, roscpp, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-tuw-ellipses";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tuw-robotics";
        repo = "tuw_marker_detection-release";
        rev = "release/melodic/tuw_ellipses/0.1.1-1";
        sha256 = "sha256-ZhJXJoaT4bG7f0MKMsqhNIVIAXwiyzggRmLqxij867c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-transport marker-msgs nodelet roscpp rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_ellipses package contains a computer vision library which is able to detect ellipses within images.  
    The package is able to estimate the pose of the circle related to the ellipse the circle diameter as well as the camera parameter are known.
    A dynamic reconfigure interface allows the user to tune the parameter of the system to ones needs.
    But be aware that the pose of a projected circle within a image (ellipse) has two solutions and only one is published as TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
