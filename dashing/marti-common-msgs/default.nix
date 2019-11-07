
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-marti-common-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/dashing/marti_common_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9b95a5c46576c2f56e60489b0a3fec052127124f86739c3cfcc46335e8f53427";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''marti_common_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
