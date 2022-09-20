
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, freenect-camera, image-proc, nodelet, rgbd-launch, tf }:
buildRosPackage {
  pname = "ros-melodic-freenect-launch";
  version = "0.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/melodic/freenect_launch/0.4.3-2.tar.gz";
    name = "0.4.3-2.tar.gz";
    sha256 = "d4041676b145d7a7ec352e261fc9565580f8b70db614675b7ce5246b03a563bc";
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
