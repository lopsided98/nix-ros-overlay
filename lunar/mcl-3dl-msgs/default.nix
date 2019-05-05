
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-mcl-3dl-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/lunar/mcl_3dl_msgs/0.1.2-0.tar.gz;
    sha256 = "fe0619254906ca6457e80d8fbe8c971fd20d65f0a15fcafa030ca6b68029d9d9";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
