
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-melodic-async-comm";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/dpkoch/async_comm-release/archive/release/melodic/async_comm/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "9cc4a16ea07097a37952f076d5fe82b9cc452f56e75b4bfa7c12786ca1c59926";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A C++ library for asynchronous serial communication'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
