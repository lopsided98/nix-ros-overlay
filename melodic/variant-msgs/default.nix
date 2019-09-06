
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-variant-msgs";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/melodic/variant_msgs/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "bc5b26692c4b9223aa4bd83c00fe4b2710a4f5acfe1b9c49cbba0e6f1ad3a16f";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Variant messages are designed to accommodate the information content
    of any invariant message. They are truly generic and can freely be
    converted to and from specific message objects.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
