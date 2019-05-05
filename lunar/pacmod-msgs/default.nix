
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-pacmod-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/pacmod_msgs/2.3.1-0.tar.gz;
    sha256 = "36cfafd2cc869f6486d451f8429899e0e49673e4f24a346875bcfac35d4b95a1";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definition files for the PACMod driver'';
    license = with lib.licenses; [ mit ];
  };
}
