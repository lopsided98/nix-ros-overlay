
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jackal-msgs";
  version = "0.6.5-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_msgs/0.6.5-2.tar.gz";
    name = "0.6.5-2.tar.gz";
    sha256 = "3c3e90ebd20daf761cd865c9264a5bcc21c20be771da2df151af0f72a665f968";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
