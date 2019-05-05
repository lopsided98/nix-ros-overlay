
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-jsk-hark-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/jsk_hark_msgs/4.3.1-0.tar.gz;
    sha256 = "51eec0525d02e96e3a9b9cf02616ebe8873625a33a27f323205b64f840eeff83";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_hark_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
