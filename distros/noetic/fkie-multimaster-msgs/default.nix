
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fkie-multimaster-msgs";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_multimaster_msgs/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "42d517ebab9e0e36d0fd5da525f49f462053676fff9eac504ed63ed6e271c96f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.grpcio-tools ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The messages required by multimaster packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
