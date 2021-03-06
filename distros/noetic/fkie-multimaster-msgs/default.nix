
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fkie-multimaster-msgs";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_multimaster_msgs/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "dc900162eb805de7db2f86c7e61e069ae6c814577a17a591dce54e422574c5fe";
  };

  buildType = "catkin";
  buildInputs = [ message-generation python3Packages.grpcio-tools ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The messages required by multimaster packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
