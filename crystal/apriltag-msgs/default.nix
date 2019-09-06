
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-apriltag-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/christianrauch/apriltag2_node-release/archive/release/crystal/apriltag_msgs/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "af7792e34c22e34c7cf69608d103c3d27cb182bb5741a3848fb21d4eb59cc028";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''AprilTag message definitions'';
    license = with lib.licenses; [ mit ];
  };
}
