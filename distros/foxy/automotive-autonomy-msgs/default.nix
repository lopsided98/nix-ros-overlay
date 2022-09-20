
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, automotive-navigation-msgs, automotive-platform-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-automotive-autonomy-msgs";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/foxy/automotive_autonomy_msgs/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "85ccd955cbadc897374c94ea50e08eecb1aa5562d37fb8a90fa18001ab832a3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ automotive-navigation-msgs automotive-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for vehicle automation'';
    license = with lib.licenses; [ mit ];
  };
}
