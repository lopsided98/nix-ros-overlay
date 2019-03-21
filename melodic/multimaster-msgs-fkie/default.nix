
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-multimaster-msgs-fkie";
  version = "0.8.10";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/multimaster_msgs_fkie/0.8.10-0.tar.gz;
    sha256 = "eaae4c70fbbfac04d781904e426e516d236eb80b33137ada1ade28eeb2355fc2";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''The messages required by multimaster packages.'';
    #license = lib.licenses.BSD;
  };
}
