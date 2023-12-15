
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-etsi-its-denm-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/iron/etsi_its_denm_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "f10c740d228bf449395e4311384f6e7918d80a184dd4217c2f46208d0ca8280f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''ROS messages for ETSI ITS DENM'';
    license = with lib.licenses; [ mit ];
  };
}
