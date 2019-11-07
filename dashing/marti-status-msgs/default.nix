
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-marti-status-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/dashing/marti_status_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a12f1abd31c6257cbed5da8605f3302b52f8a748744a764d20b5a4b954904b14";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''marti_status_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
