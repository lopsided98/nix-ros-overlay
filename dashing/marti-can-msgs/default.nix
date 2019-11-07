
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-marti-can-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/dashing/marti_can_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "be124edf848ac2cada8f91962c97be63e8d14d061fdb38deea00f93ccf642d5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''marti_can_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
