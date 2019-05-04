
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-msgs";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/ridgeback_msgs/0.2.2-0.tar.gz;
    sha256 = "e30d8dcac64fa38e60f4eaee72284d4e606b92b288da28df2c2db8832930f2c5";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Ridgeback, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
