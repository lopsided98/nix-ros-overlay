
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gscam, stereo-image-proc, image-proc, tf, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ps4eye";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/ps4eye-release/archive/release/kinetic/ps4eye/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "fd95a9f4c4694364cc2451ab424b82440ffdd3c3c6119ceab6de1a7290f0f8b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gscam stereo-image-proc image-proc tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ps4eye package'';
    license = with lib.licenses; [ asl20 ];
  };
}
