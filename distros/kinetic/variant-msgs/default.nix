
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-variant-msgs";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/kinetic/variant_msgs/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "ddebb68e13b13b0a715623f622248e47f235cb8ae4b3595cf7f8c619fe7afbe7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant messages are designed to accommodate the information content
    of any invariant message. They are truly generic and can freely be
    converted to and from specific message objects.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
