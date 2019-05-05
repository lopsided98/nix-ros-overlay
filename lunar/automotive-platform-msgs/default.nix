
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-automotive-platform-msgs";
  version = "2.0.3";

  src = fetchurl {
    url = https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/lunar/automotive_platform_msgs/2.0.3-0.tar.gz;
    sha256 = "33c48835354733d4f9de3b67a827d624e81b173a82a1d4a85e7c5f703e36cdba";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Messages for Communication with an Automotive Autonomous Platform'';
    license = with lib.licenses; [ mit ];
  };
}
