{ lib, stdenv, fetchFromGitLab }:

stdenv.mkDerivation rec {
  pname = "argoned";
  version = "unstable-2021-07-29";
  src = fetchFromGitLab {
    owner = "DarkElvenAngel";
    repo = pname;
    rev = "ee3df279f7954a8020313f5be15a2f9db0b71341";
    sha256 = "";
  };

  meta = with lib; {
    homepage = "https://gitlab.com/DarkElvenAngel/argononed";
    description = "A replacement daemon for the Argon One Raspberry Pi case";
    license = licenses.mit;
    platforms = [ "aarch64-linux" ];
    maintainers = with maintainers; [ misterio77 ];
  };
}
