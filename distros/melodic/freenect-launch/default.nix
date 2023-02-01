
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, freenect-camera, image-proc, nodelet, rgbd-launch, tf }:
buildRosPackage {
  pname = "ros-melodic-freenect-launch";
  version = "0.4.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "freenect_stack-release";
        rev = "release/melodic/freenect_launch/0.4.3-2";
        sha256 = "sha256-LQ9HkSoWAC1T+Fc6vKXuFpstl5KJnIIXBCcklm6ee4A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ freenect-camera image-proc nodelet rgbd-launch tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for freenect_camera to produce rectified, registered
    or disparity images.  Also produce point clouds and registered
    point clouds.  Based on the openni_launch package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
