
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-embeddedlinux";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_embeddedlinux/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "3834be581ac1ed6d71d9481ec8fdb9818be429b348ebcbfa1dd2311faf4bab1b";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosserial-client ];
  propagatedBuildInputs = [ rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
