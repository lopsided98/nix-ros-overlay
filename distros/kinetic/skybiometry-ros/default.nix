
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-recognition-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-skybiometry-ros";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/skybiometry_ros/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "8fa132d77f7684f84d73ff6af23dd416ed52c4985261d7e59968b2f396e18719";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-recognition-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The skybiometry_ros package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
